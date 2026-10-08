"""Random TL objects for every constructor in api.tl, serialised by Telethon.

Writes <out>/fuzz.bin as records of [uint32 length][bytes] and <out>/fuzz.tsv
with the constructor name of each record. Used to check that telegramR's
compiled lite decoder produces the same objects as its R decoder for every
constructor, flag combination and nesting (tests/testthat and data-raw).

usage: make_fuzz_corpus.py api.tl outdir [instances_per_ctor] [seed]
"""
import inspect, random, re, struct, sys, os
from telethon.tl.alltlobjects import tlobjects

api, out = sys.argv[1], sys.argv[2]
per = int(sys.argv[3]) if len(sys.argv) > 3 else 3
random.seed(int(sys.argv[4]) if len(sys.argv) > 4 else 7)

defs, by_type = {}, {}
section = "types"
for line in open(api, encoding="utf-8"):
    line = line.strip()
    if not line or line.startswith("//"):
        continue
    if line == "---functions---":
        section = "functions"; continue
    if line == "---types---":
        section = "types"; continue
    if section != "types":
        continue
    m = re.match(r"^([\w.]+)#([0-9a-f]+)\s*(.*?)\s*=\s*([\w.<>]+);$", line)
    if not m:
        continue
    name, cid, argstr, res = m.groups()
    args = []
    for tok in argstr.split():
        if ":" not in tok:
            continue
        n, t = tok.split(":", 1)
        fm = re.match(r"^(\w+)\.(\d+)\?(.+)$", t)
        args.append((n, t, None, None) if t == "#" else
                    (n, fm.group(3), fm.group(1), int(fm.group(2))) if fm else (n, t, None, None))
    defs[int(cid, 16)] = (name, args, res)
    by_type.setdefault(res, []).append(int(cid, 16))

SKIP_RESULT = {"Bool", "True", "Null", "Vector t", "Error"}

def rand_str():
    alphabet = "abc xyz привіт 🔥 ії _-"
    return "".join(random.choice(alphabet) for _ in range(random.randint(0, 40)))

def prim(t):
    if t == "int": return random.choice([0, 1, -1, 2**31 - 1, -2**31 + 1, random.randint(-2**31 + 1, 2**31 - 1)])
    if t == "long": return random.choice([0, -1, 2**63 - 1, -2**63, random.randint(-2**63, 2**63 - 1)])
    if t == "double": return random.choice([0.0, -1.5, 3.141592653589793, random.uniform(-1e6, 1e6)])
    if t == "string": return rand_str()
    if t == "bytes": return os.urandom(random.choice([0, 1, 3, 4, 253, 254, 300]))
    if t == "Bool": return random.random() < 0.5
    if t == "int128": return random.getrandbits(128)
    if t == "int256": return random.getrandbits(256)
    return None

def make(cid, depth):
    name, args, res = defs[cid]
    cls = tlobjects[cid]
    params = set(inspect.signature(cls.__init__).parameters)
    flag_on = {}
    kwargs = {}
    for n, t, flag, bit in args:
        if t == "#":
            continue
        if flag is not None:
            key = (flag, bit)
            if key not in flag_on:
                flag_on[key] = random.random() < (0.6 if depth < 3 else 0.2)
            if not flag_on[key]:
                continue
            if t == "true":
                v = True
            else:
                v = value(t, depth)
        else:
            v = value(t, depth)
        pn = n if n in params else n + "_"
        if pn not in params:
            raise KeyError(f"{name}.{n}")
        kwargs[pn] = v
    return cls(**kwargs)

def value(t, depth):
    p = prim(t)
    if p is not None or t in ("int", "long", "double", "string", "bytes", "Bool", "int128", "int256"):
        return p
    vm = re.match(r"^Vector<(.+)>$", t)
    if vm:
        n = random.randint(0, 3 if depth < 3 else 1)
        return [value(vm.group(1), depth + 1) for _ in range(n)]
    cands = [c for c in by_type.get(t, []) if c in tlobjects]
    if not cands:
        raise KeyError(t)
    if depth >= 4:  # prefer constructors without nested objects
        simple = [c for c in cands if all(prim(a[1]) is not None or a[1] in ("#", "true") or a[2] for a in defs[c][1])]
        cands = simple or cands
    return make(random.choice(cands), depth + 1)

with open(os.path.join(out, "fuzz.bin"), "wb") as fb, open(os.path.join(out, "fuzz.tsv"), "w") as ft:
    ok = fail = 0
    for cid, (name, args, res) in sorted(defs.items()):
        if res in SKIP_RESULT or cid not in tlobjects:
            continue
        for _ in range(per):
            try:
                b = bytes(make(cid, 0))
            except Exception:
                fail += 1
                continue
            fb.write(struct.pack("<I", len(b)) + b)
            ft.write(f"{name}\t{cid}\n")
            ok += 1
print(f"records={ok} skipped={fail}")
