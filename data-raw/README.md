# TL schema regeneration tooling

The R6 classes in `R/types.R` and `R/functions_*.R` are generated from
Telegram's TL schema. They currently correspond to a **mix of layers** (most
types are stable, but ~114 changed classes lag the current schema), while
`R/telegrambaseclient.R` negotiates `LAYER <- 216`. That mismatch is why some
newer constructor ids and field layouts are stale.

This directory holds the tooling to fix that properly.

## Files

- `api.tl` — vendored Telegram TL schema (layer 229), from
  Telethon v1: <https://codeberg.org/Lonami/Telethon/raw/branch/v1/telethon_generator/data/api.tl>
- `generate_tl.py` — parser + R6 emitter (a port of Telethon's schema step).
- `layer229_audit.tsv` — every existing R6 class whose constructor id differs
  from layer 229: `ClassName<TAB>current_id<TAB>schema_id<TAB>file`.

## Usage

```sh
# What layer / how many defs
python3 data-raw/generate_tl.py data-raw/api.tl

# Which classes are stale vs the schema (regenerate audit)
python3 data-raw/generate_tl.py data-raw/api.tl --audit > data-raw/layer229_audit.tsv

# Emit one class for review (byte-validated against the runtime)
python3 data-raw/generate_tl.py data-raw/api.tl --emit SendMessageRequest
```

The emitter produces telegramR's **type** convention: snake_case fields,
`to_dict()`, `bytes()`, private `from_reader()`, `class = TRUE`; function
requests add a `Request` suffix and inherit `TLRequest`. Serialization uses the
package runtime helpers (`pack`, `packInt64`, `serialize_bytes`,
`serialize_datetime`, `.telegramR_tl_vector`) and always emits little-endian
constructor ids. Output is byte-validated against known-good classes
(`PeerUser`, `InputPeerNotifySettings`).

## Doing the full layer bump (why it is not automated)

A blind overwrite is unsafe for two reasons:

1. **Mixed field-name conventions.** Some generated classes use camelCase
   fields (`GetHistoryRequest$offsetId`) and some snake_case
   (`SendMessageRequest$no_webpage`). The emitter is snake_case, so
   regenerating a camelCase class renames its fields and breaks every call
   site. Call sites must be migrated alongside.

2. **Hand-written readers.** `Channel`, `Message`, `User`, `ChannelFull`,
   `ChatFull` and the `messages.*` containers are parsed by hand in
   `R/binaryreader.R` (`.telegramR_read_*`) at the current layer. Their
   constructor ids **and field layouts** must move to the new layer together
   with the generated classes, or parsing breaks.

Recommended procedure:

1. Bump `LAYER` in `R/telegrambaseclient.R` to match `api.tl` (229).
2. For each class in `layer229_audit.tsv`, emit the new definition and splice
   it in, preserving that class's existing field-name style; update any call
   site that constructs it with changed field names.
3. Update the hand-written `.telegramR_read_*` readers in `R/binaryreader.R`
   to the new layer's constructor ids and field layouts.
4. Run the full unit suite (`NOT_CRAN=true`) and the live integration smoke
   test (`inst/integration/smoke.R`) against a real account; the latter is the
   only check that catches wire-level regressions.

Until then the package works at its current mixed layer: the object reader
tolerates unknown update subtypes, and all documented flows pass the live
smoke test.
