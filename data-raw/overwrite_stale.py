#!/usr/bin/env python3
"""Overwrite stale telegramR R6 classes in place at a target TL layer.

For every class whose constructor id lags the schema, regenerate its body
(constructor id, fields, initialize, to_dict/toDict, resolve, bytes,
from_reader) while PRESERVING that class's existing conventions so call sites
keep working:

  * field names   - reuse the existing R field name whenever a schema field
                     maps to it (matched by lower-casing and dropping "_"),
                     so camelCase classes stay camelCase; new fields are added
                     in snake_case.
  * dict method    - keep to_dict() or toDict() as the class already used.
  * resolve()      - regenerate for function requests that had one, from the
                     schema's InputPeer/InputUser/InputChannel fields.
  * inheritance    - keep TLObject / TLRequest and lock_objects = FALSE.

Run from the package root:
    python3 data-raw/overwrite_stale.py data-raw/api.tl data-raw/layer229_audit.tsv [--dry]
"""
import re
import sys
import zlib
import glob

from importlib import import_module
sys.path.insert(0, "data-raw")
gen = import_module("generate_tl")


def norm(name):
    return re.sub(r"[^a-z0-9]", "", name.lower())


RESOLVE_INPUT = {
    "InputPeer": "get_input_entity",
    "InputUser": "get_input_entity",
    "InputChannel": "get_input_entity",
}


def emit_class(d, existing):
    """Delegate to gen.gen_class, preserving the existing class's conventions."""
    fields = [a for a in d["args"] if a["type"] != "#"]
    exist_by_key = {norm(a): a for a in existing["args"]}
    rename = {a["name"]: exist_by_key.get(norm(a["name"]), a["name"]) for a in fields}
    return gen.gen_class(
        d,
        rename=rename,
        inherit=existing["inherit"],
        dict_method=existing["dict_method"],
        has_resolve=existing["has_resolve"],
        lock_objects=existing["lock_objects"],
    )


def find_class_span(s, name):
    m = re.search(r'^' + re.escape(name) + r' <- R6::R6Class\(', s, re.M)
    if not m:
        return None
    start = m.start()
    nxt = re.search(r'\n[A-Za-z0-9_.]+ <- R6::R6Class\(', s[start + 10:])
    end = start + 10 + nxt.start() + 1 if nxt else len(s)
    return start, end


def existing_meta(body):
    inherit = "TLRequest" if "inherit = TLRequest" in body else "TLObject"
    init = re.search(r"initialize = function\(([^)]*)\)", body)
    args = []
    if init and init.group(1).strip():
        args = [a.split("=")[0].strip() for a in init.group(1).split(",")]
    dict_method = "toDict" if re.search(r"\btoDict = function", body) else "to_dict"
    return dict(
        inherit=inherit,
        args=args,
        dict_method=dict_method,
        has_resolve=bool(re.search(r"\bresolve = function", body)),
        lock_objects="lock_objects = FALSE" in body,
    )


def main():
    api, audit = sys.argv[1], sys.argv[2]
    dry = "--dry" in sys.argv
    schema = gen.parse_tl(api)
    type_idx, func_idx = {}, {}
    for x in schema:
        if x["func"]:
            func_idx[gen.pascal(x["full"]) + "Request"] = x
            func_idx.setdefault(gen.pascal(x["full"]), x)
        else:
            type_idx[gen.pascal(x["full"])] = x
    stale = [l.split("\t")[0] for l in open(audit) if not l.startswith("#") and l.strip()]
    stale = list(dict.fromkeys(stale))  # de-dup, keep order

    # group targets by file
    files = {}
    for f in glob.glob("R/*.R"):
        files[f] = open(f).read()

    done = 0
    for name in stale:
        # find the file + existing body first, then pick the schema def whose
        # KIND (type vs function) matches the existing class's inheritance.
        target_file = None
        for f, s in files.items():
            if re.search(r'^' + re.escape(name) + r' <- R6::R6Class\(', s, re.M):
                target_file = f
                break
        if target_file is None:
            print(f"  SKIP (not found in R/): {name}")
            continue
        s = files[target_file]
        span = find_class_span(s, name)
        body = s[span[0]:span[1]]
        meta = existing_meta(body)
        d = func_idx.get(name) if meta["inherit"] == "TLRequest" else type_idx.get(name)
        if d is None:
            d = type_idx.get(name) or func_idx.get(name)
        if d is None:
            print(f"  SKIP (no schema): {name}")
            continue
        _, newbody = emit_class(d, meta)
        # keep a trailing newline separation like the original
        trail = "\n" if not newbody.endswith("\n") else ""
        files[target_file] = s[:span[0]] + newbody + trail + "\n" + s[span[1]:].lstrip("\n")
        done += 1

    print(f"regenerated {done}/{len(stale)} stale classes")
    if dry:
        # write emitted classes to a review file instead of overwriting
        return
    for f, s in files.items():
        open(f, "w").write(s)
    print("files overwritten")


if __name__ == "__main__":
    main()
