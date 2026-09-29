#!/bin/bash
# Full layer-229 regeneration pipeline. Run from package root.
set -e
API=data-raw/api.tl
AUDIT=data-raw/layer229_audit.tsv
python3 data-raw/generate_tl.py "$API" --audit > "$AUDIT" 2>/dev/null || true
python3 data-raw/dedupe_types.py R/types.R >/dev/null
python3 data-raw/overwrite_stale.py "$API" "$AUDIT" --all-types >/dev/null   # regenerate all types
python3 data-raw/overwrite_stale.py "$API" "$AUDIT" >/dev/null               # fix stale function ctors
python3 data-raw/emit_missing.py "$API" >> R/types.R                          # add missing types
# bump LAYER
perl -0pi -e 's/^LAYER <- \d+.*$/LAYER <- 229 # regenerated from Telethon v1 api.tl (data-raw\/api.tl)/m' R/telegrambaseclient.R
echo "regeneration complete"
