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

## Finding: a stale-constructor fix is NOT enough (attempted 2026-09-29)

An automated in-place overwrite of the 111 stale classes + `LAYER <- 229` was
built and tried end to end. It regenerated cleanly (multi-flag types like
`Channel` round-trip byte-for-byte, conventions preserved) and unit PASS rose,
but the **live** smoke test regressed the parsing hot path: dialogs and message
history failed with "No more data left to read".

Root cause: at layer 229 the server sends **nested types the repo does not
have at all** — e.g. a `WebPage` subtype (`0xe8a93b72`) inside
`MessageMediaWebPage`. An unknown constructor makes `tgread_object()` consume
the rest of the stream, so the enclosing `Message`/`Dialog` fails to parse.
`python3 generate_tl.py api.tl --missing` reports ~575 schema defs with no R6
class in `R/`.

Conclusion: a correct layer bump is a **full regeneration** (add the missing
types AND fix the stale ones AND move the hand-written `.telegramR_read_*`
readers), not a stale-constructor patch. The overwrite was reverted; the
package stays at its working mixed layer, where the tolerant object reader
skips unknown updates and all documented flows pass the live smoke.

Use `generate_tl.py --emit NAME` to generate each class, `--audit` for stale
constructor ids, and `--missing` for types to add. The emitter is validated;
the remaining work is the hand-reader reconciliation and live validation of
every message/dialog/media flow, one at a time.

## Update: generator hardened; remaining work is per-type field-layout validation

The generator/overwriter were hardened to handle every *structural* case found
while attempting the full bump, all validated (e.g. `Channel`, which has two
flag words, round-trips byte-for-byte):

- multiple flag fields (`flags` and `flags2`), emitted/read in declaration order;
- reserved R6 names (`self`/`private`/`super`) and method-name collisions
  (a TL field literally named `bytes`, etc.) are sanitised with a trailing `_`;
- type-vs-function name clashes (`updateNotifySettings` type vs
  `account.updateNotifySettings` function) are disambiguated by the existing
  class's inheritance;
- namespaced-vs-bare pascal clashes (19 of them, e.g. `messages.webPage` vs
  `webPage`, `messages.chatFull` vs `chatFull`) resolve to the **bare** type,
  matching the repo's existing class names;
- typed scalar vectors (`Vector<long>`/`int`/`string`) serialise per element.

`--missing` also generates the ~491 absent type classes.

A second full attempt (fix 102 stale ctors + add 491 missing types + LAYER 229)
loaded and got much further live: `get_me`, media, reactions, username and
profile photos passed, and message parsing now recognises `WebPage` and parses
`Photo`/sizes. It still fails deep inside individual complex types' optional
fields (e.g. `webPage`'s many `flags.N?` fields) with alignment errors.

Conclusion: the structural generation is solved; what remains is **per-type
field-layout validation against live data** for the complex parse-tree types
(`WebPage`, `Message`, `Document`, `Page`, `ChannelFull`, `User`, ...), plus
naming the 19 namespaced container types distinctly and removing the
hand-written `.telegramR_read_*` readers once their generated counterparts are
confirmed. That is an iterative, live-validated pass best done per type against
`inst/integration/smoke.R`. Both full attempts were reverted; the package stays
on its working layer where all documented flows pass live.
