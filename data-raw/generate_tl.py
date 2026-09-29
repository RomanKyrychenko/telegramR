#!/usr/bin/env python3
"""Generate telegramR R6 classes from a Telegram TL schema (api.tl).

This is a build-time tool, not part of the installed package. It ports the
schema step of Telethon's generator (codeberg.org/Lonami/Telethon, v1,
telethon_generator) to emit R6 classes compatible with telegramR's runtime.

Usage:
    python3 data-raw/generate_tl.py data-raw/api.tl [--audit] [--emit NAME]

Modes:
    --audit        Report which existing R6 classes in R/ are stale (wrong
                   constructor id) versus the schema. No files are changed.
    --emit NAME    Print the generated R6 class for one TL definition (by
                   PascalCase class name) to stdout, for review/validation.

The emitted classes follow telegramR's *type* convention (snake_case fields,
to_dict(), bytes(), private from_reader(), class = TRUE). Function requests use
the same serialization but add a Request suffix and inherit TLRequest.

Serialization primitives assumed present in the package runtime:
    pack("<i"/"<I"/"<q"/"<Q", x)   little-endian int32/uint32/int64/uint64
    packInt64(x)                   correct int64 for numeric/bigz/character
    serialize_bytes(raw|string)    TL bytes/string with length + padding
    serialize_datetime(x)          int32 unix timestamp
    .telegramR_tl_vector(list)     0x1cb5c415 + count + each item$bytes()
Constructor ids are always emitted little-endian.
"""
import re
import sys
import zlib


def parse_tl(path):
    defs = []
    is_func = False
    for raw in open(path, encoding="utf-8"):
        line = raw.strip()
        if not line or line.startswith("//"):
            continue
        if line == "---functions---":
            is_func = True
            continue
        if line == "---types---":
            is_func = False
            continue
        m = re.match(r"^([\w.]+)#([0-9a-f]+)\s*(.*?)\s*=\s*([\w.<>%!]+);$", line)
        if not m:
            continue
        full, cid, argstr, res = m.group(1), int(m.group(2), 16), m.group(3), m.group(4)
        args = []
        for tok in argstr.split():
            if ":" not in tok:
                continue
            name, typ = tok.split(":", 1)
            if typ == "#":
                args.append(dict(name=name, type="#", flag=None, bit=None))
                continue
            fm = re.match(r"(\w+)\.(\d+)\?(.+)$", typ)
            if fm:
                args.append(dict(name=name, type=fm.group(3), flag=fm.group(1), bit=int(fm.group(2))))
            else:
                args.append(dict(name=name, type=typ, flag=None, bit=None))
        defs.append(dict(full=full, cid=cid, args=args, res=res, func=is_func))
    return defs


def pascal(tl):
    short = tl.split(".")[-1]
    return short[0].upper() + short[1:]


def subclass_id(res):
    # Vector<T> -> the boxed vector type id; otherwise crc32 of the bare type.
    if res.startswith("Vector<"):
        return 0x1CB5C415
    return zlib.crc32(res.encode()) & 0xFFFFFFFF


def le_bytes(cid):
    return ", ".join("0x%02x" % ((cid >> (8 * i)) & 0xFF) for i in range(4))


# --- serialization emitters -------------------------------------------------
def ser_scalar(expr, typ):
    """R expression producing the raw bytes for one non-flag scalar field."""
    if typ == "int":
        return f'pack("<i", {expr})'
    if typ in ("long",):
        return f"packInt64({expr})"
    if typ == "double":
        return f'writeBin(as.double({expr}), raw(), size = 8, endian = "little")'
    if typ == "string" or typ == "bytes":
        return f"serialize_bytes({expr})"
    if typ == "int128":
        return f"{expr}"  # already a 16-byte raw
    if typ == "int256":
        return f"{expr}"  # already a 32-byte raw
    if typ == "date":
        return f"self$serialize_datetime({expr})"
    if typ.startswith("Vector<"):
        return f".telegramR_tl_vector({expr})"
    # Bool
    if typ == "Bool":
        return f'if (isTRUE({expr})) as.raw(c(0xb5, 0x75, 0x72, 0x99)) else as.raw(c(0x37, 0x97, 0x79, 0xbc))'
    # nested TLObject
    return f"{expr}$bytes()"


def deser_scalar(typ):
    if typ == "int":
        return "reader$read_int()"
    if typ == "long":
        return "reader$read_long()"
    if typ == "double":
        return "reader$read_double()"
    if typ == "string":
        return "reader$tgread_string()"
    if typ == "bytes":
        return "reader$tgread_bytes()"
    if typ == "int128":
        return "reader$read(16)"
    if typ == "int256":
        return "reader$read(32)"
    if typ == "date":
        return "reader$tgread_date()"
    if typ == "Bool":
        return "reader$tgread_bool()"
    if typ.startswith("Vector<"):
        return "reader$tgread_vector()"
    return "reader$tgread_object()"


def gen_class(d):
    name = pascal(d["full"]) + ("Request" if d["func"] else "")
    fields = [a for a in d["args"] if a["type"] != "#"]
    has_flags = any(a["type"] == "#" for a in d["args"])
    flag_field = next((a["name"] for a in d["args"] if a["type"] == "#"), "flags")

    # initialize signature: required first, optionals (flagged) default NULL
    sig = []
    for a in fields:
        if a["flag"] is not None or a["type"] == "true":
            sig.append(f"{a['name']} = NULL")
        else:
            sig.append(a["name"])
    real_fields = [a for a in fields if a["type"] != "true"]

    L = []
    L.append(f'{name} <- R6::R6Class("{name}",')
    L.append(f"  inherit = {'TLRequest' if d['func'] else 'TLObject'},")
    L.append("  public = list(")
    L.append(f"    CONSTRUCTOR_ID = 0x{d['cid']:08x},")
    L.append(f"    SUBCLASS_OF_ID = 0x{subclass_id(d['res']):x},")
    for a in fields:
        L.append(f"    {a['name']} = NULL,")
    # initialize
    L.append(f"    initialize = function({', '.join(sig)}) {{")
    for a in fields:
        L.append(f"      self${a['name']} <- {a['name']}")
    L.append("    },")
    # to_dict
    dict_items = ['`_` = "%s"' % name]
    for a in fields:
        e = f"self${a['name']}"
        dict_items.append(
            f'"{a["name"]}" = if (inherits({e}, "TLObject")) {e}$to_dict() else {e}'
        )
    L.append("    to_dict = function() {")
    L.append("      list(")
    L.append(",\n".join("        " + it for it in dict_items))
    L.append("      )")
    L.append("    },")
    # bytes
    L.append("    bytes = function() {")
    if has_flags:
        L.append("      flags <- 0L")
        for a in fields:
            if a["flag"] is not None:
                bit = 1 << a["bit"]
                if a["type"] == "true":
                    L.append(f"      if (isTRUE(self${a['name']})) flags <- bitwOr(flags, {bit}L)")
                else:
                    L.append(f"      if (!is.null(self${a['name']})) flags <- bitwOr(flags, {bit}L)")
    L.append("      c(")
    parts = [f"as.raw(c({le_bytes(d['cid'])}))"]
    if has_flags:
        parts.append('pack("<I", flags)')
    for a in fields:
        if a["type"] == "true":
            continue  # encoded only in flags
        if a["flag"] is not None:
            parts.append(
                f"if (!is.null(self${a['name']})) {ser_scalar('self$'+a['name'], a['type'])} else raw(0)"
            )
        else:
            parts.append(ser_scalar("self$" + a["name"], a["type"]))
    L.append(",\n".join("        " + p for p in parts))
    L.append("      )")
    L.append("    }")
    L.append("  ),")
    # private from_reader
    L.append("  private = list(")
    L.append("    from_reader = function(reader) {")
    if has_flags:
        L.append("      flags <- reader$read_int()")
    for a in fields:
        if a["type"] == "true":
            L.append(f"      self${a['name']} <- bitwAnd(flags, {1 << a['bit']}L) != 0")
        elif a["flag"] is not None:
            L.append(
                f"      self${a['name']} <- if (bitwAnd(flags, {1 << a['bit']}L) != 0) {deser_scalar(a['type'])} else NULL"
            )
        else:
            L.append(f"      self${a['name']} <- {deser_scalar(a['type'])}")
    L.append("      self")
    L.append("    }")
    L.append("  ),")
    L.append("  class = TRUE" + (",\n  lock_objects = FALSE" if d["func"] else ""))
    L.append(")")
    return "\n".join(L)


def audit(path):
    import glob
    schema = parse_tl(path)
    idx = {}
    for x in schema:
        nm = pascal(x["full"]) + ("Request" if x["func"] else "")
        idx[nm] = x
        if x["func"]:
            idx[pascal(x["full"])] = x
    stale = []
    matched = 0
    for f in glob.glob("R/*.R"):
        s = open(f).read()
        for m in re.finditer(r'^([A-Za-z0-9]+) <- R6::R6Class\(\s*"\1",(.*?)(?=^[A-Za-z0-9]+ <- R6::R6Class\(|\Z)', s, re.S | re.M):
            name, body = m.group(1), m.group(2)
            cm = re.search(r"CONSTRUCTOR_ID = (0x[0-9a-fA-F]+|-?\d+)", body)
            if not cm or name not in idx:
                continue
            cid = int(cm.group(1), 0) & 0xFFFFFFFF
            matched += 1
            if cid != idx[name]["cid"]:
                stale.append((name, "0x%08x" % cid, "0x%08x" % idx[name]["cid"], f.split("/")[-1]))
    print(f"# Schema layer classes matched in R/: {matched}; stale constructor ids: {len(stale)}")
    for name, cur, want, fn in sorted(stale):
        print(f"{name}\t{cur}\t{want}\t{fn}")


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        sys.exit(1)
    path = sys.argv[1]
    if "--audit" in sys.argv:
        audit(path)
        return
    if "--emit" in sys.argv:
        target = sys.argv[sys.argv.index("--emit") + 1]
        schema = parse_tl(path)
        for d in schema:
            nm = pascal(d["full"]) + ("Request" if d["func"] else "")
            if nm == target:
                print(gen_class(d))
                return
        print(f"# not found: {target}", file=sys.stderr)
        sys.exit(2)
    # default: report counts
    schema = parse_tl(path)
    layer = None
    for line in open(path, encoding="utf-8"):
        m = re.search(r"// LAYER (\d+)", line)
        if m:
            layer = m.group(1)
    print(f"# layer {layer}: {sum(not x['func'] for x in schema)} types, {sum(x['func'] for x in schema)} functions")


if __name__ == "__main__":
    main()
