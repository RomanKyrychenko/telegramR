#!/usr/bin/env python3
"""Emit generated R6 classes for schema TYPES absent from R/ (to stdout)."""
import sys, re, glob
sys.path.insert(0,"data-raw"); import generate_tl as gen
sch=gen.parse_tl(sys.argv[1]); present=set()
for f in glob.glob("R/*.R"):
    for m in re.finditer(r'^([A-Za-z0-9]+) <- R6::R6Class\(', open(f).read(), re.M): present.add(m.group(1))
out=[]; seen=set()
for d in sch:
    if d["func"]: continue
    nm=gen.pascal(d["full"])
    if nm in present or nm in seen: continue
    seen.add(nm); out.append(gen.gen_class(d)[1])
sys.stdout.write("\n\n# ---- Types added for layer-229 completeness (generated) ----\n\n"+"\n\n".join(out)+"\n")
