#!/usr/bin/env python3
"""Remove duplicate R6 class definitions from R/*.R (keep the first of each).

The generated sources contain repeated class definitions (R uses the last one
loaded); regeneration must act on a single definition per class. Run before
overwrite_stale.py --all-types.
"""
import re, sys, glob

def spans(s):
    starts=[(m.start(), m.group(1)) for m in re.finditer(r'^([A-Za-z0-9_.]+) <- R6::R6Class\(', s, re.M)]
    out=[]
    for i,(pos,name) in enumerate(starts):
        end = starts[i+1][0] if i+1<len(starts) else len(s)
        out.append((pos,end,name))
    return out

def dedupe(path):
    s=open(path).read()
    sp=spans(s)
    seen=set(); remove=[]
    for pos,end,name in sp:
        if name in seen: remove.append((pos,end))
        else: seen.add(name)
    if not remove: return 0
    for pos,end in sorted(remove, reverse=True):
        s=s[:pos]+s[end:]
    open(path,'w').write(s)
    return len(remove)

if __name__=="__main__":
    files = sys.argv[1:] or glob.glob("R/*.R")
    tot=0
    for f in files:
        n=dedupe(f)
        if n: print(f"{f}: removed {n} duplicate class definition(s)"); tot+=n
    print(f"total removed: {tot}")
