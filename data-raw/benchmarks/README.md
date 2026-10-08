# telegramR vs Telethon: quality and speed

Run on 2026-10-08. Both libraries were tested on the same machine (4 vCPU Intel Xeon @ 2.8 GHz, Linux).

| | telegramR | Telethon |
|---|---|---|
| Version | 0.0.2 (this repo) | 1.45.0 + `cryptg` |
| Runtime | R 4.3.3 | CPython 3.13 |
| TL layer | 229 | 229 |

These are **offline** benchmarks. They time the CPU-bound parts of the client
(TL decode/encode, crypto, auth-key setup) on identical inputs, and no Telegram
account or network is used. Network round-trips and flood limits are the same for
both libraries, so on the wire the per-request cost difference comes only from the
work below.

## Reproduce

```sh
python -m venv venv && venv/bin/pip install telethon cryptg
mkdir fixtures
venv/bin/python make_fixtures.py fixtures          # Telethon-encoded messages.ChannelMessages (1/10/100 msgs)
venv/bin/python bench_py.py fixtures py.json
LANG=C.UTF-8 Rscript check_decode.R fixtures       # telegramR decode vs Telethon ground truth
LANG=C.UTF-8 Rscript bench_r.R fixtures r.json     # needs the `bench` package
```

The fixtures are realistic broadcast-channel posts. Each has mixed Ukrainian/English
text, bold and URL entities, views, forwards, replies and 1–3 reactions; every 4th post
carries a photo. Each payload also includes 10 users and 1 channel.

## Speed (median per operation)

| Operation | telegramR | Telethon | telegramR slower by |
|---|---:|---:|---:|
| Decode `ChannelMessages`, 1 msg (+10 users) | 55.8 ms | 0.21 ms | **267×** |
| Decode `ChannelMessages`, 10 msgs | 237 ms | 0.68 ms | **348×** |
| Decode `ChannelMessages`, 100 msgs (one `GetHistory` page) | 1 919 ms | 5.4 ms | **358×** |
| Encode 100 messages¹ | 284 ms | 2.0 ms | **≥143×** |
| Encode `messages.GetHistory` request | 718 µs | 1.4 µs | 512× |
| AES-256-IGE encrypt 1 KB | 9.8 µs | 2.8 µs | 3.6× |
| AES-256-IGE encrypt 128 KB | 338 µs | 285 µs | 1.2× |
| AES-256-IGE encrypt 1 MB | 3.1 ms | 2.5 ms | 1.3× |
| AES-256-IGE decrypt 1 MB | 3.4 ms | 1.8 ms | 1.9× |
| MTProto `encrypt_message_data` 1 KB | 252 µs | 11.7 µs | 22× |
| MTProto `encrypt_message_data` 128 KB | 3.9 ms | 0.62 ms | 6.3× |
| PQ factorisation (64-bit, auth-key handshake) | **4.9 s** | 33 ms | 150× |
| Cold start: load + first decode of 10 msgs | 8.1 s | 0.45 s | 18× |
| 100 messages → tibble rows (telegramR only) | 8.0 ms | n/a | n/a |

¹ Telethon encodes the whole `ChannelMessages` object (100 msgs, 10 users and 1 chat).
telegramR encodes only the 100 messages, because its special-case reader returns a plain
`list` that has no `to_bytes()`. The real ratio is therefore higher than shown.

### What this means in practice

* **Bulk channel downloads are CPU-bound in telegramR.** One 100-message
  `GetHistory` page takes about 1.9 s to decode, which caps throughput near **50 messages/s**
  before any network or flood-wait time. 100 000 posts need about **32 min of pure decoding**,
  against about 5 s in Telethon. Telethon is network-bound for the same job.
* **Login and DC migration are slow.** Each new auth key spends about 5 s in PQ
  factorisation.
* **Crypto is fine.** AES-IGE runs in C++ on OpenSSL and stays within about 1.2–2× of
  Telethon+cryptg for large payloads. The 1 KB MTProto overhead (22×) comes from R-level
  `digest()`/`c()` calls around the cipher, not from the cipher itself.

### Where the decode time goes (`Rprof`, warm cache)

* **R6 object construction: about 45% of the time.** Every TL object is instantiated
  twice. `tgread_object()` calls `cls$new()` to get a blank object, and `from_reader`
  then builds the real one. Every class inherits `TLObject`, so each `new()` pays for
  `create_super_env`/`merge_vectors`/`lockBinding`.
* **`getOption("telegramR.ctor_map")` on every object: about 18%.** The map of
  2 289 constructors is stored in `options()`.
* **`from_reader` closures are re-environmented per object.** `environment(fn) <- ...`
  runs inside `tgread_object()`, so the JIT recompiles them over and over, and this
  dominates cold runs. Separately, `DESCRIPTION` sets `ByteCompile: no`.
* **Cold start of about 8 s.** `.telegramR_get_ctor_map()` scans every object in the
  namespace through `ls()` + `get()`, which forces lazy-load of about 10k bindings, and
  `seen_names <- c(seen_names, nm)` makes the scan O(n²).
* **PQ factorisation** runs Pollard-rho in interpreted R over `gmp::bigz`. One
  `mod.bigz` allocation happens per step.

## Correctness

| Check | Result |
|---|---|
| Decode Telethon-encoded `ChannelMessages` (1/10/100): id, date, text, views, forwards, replies, reaction totals, photo presence, post_author | ✅ all match **in a UTF-8 locale** |
| Same under the `C`/POSIX locale | ❌ every message text differs. `tgread_string()` returns bytes with `Encoding() == "unknown"` |
| Re-encode the 100 decoded messages and 10 users → byte-identical to Telethon | ✅ |
| AES-IGE encrypt→decrypt round-trip 1 KB–1 MB | ✅ |
| PQ factorisation result | ✅ (1229739323 × 1402015859) |

## Code-quality comparison

| Aspect | telegramR | Telethon |
|---|---|---|
| Size | ~179k lines of R (mostly generated TL classes) + 640 lines of C++ | ~31k lines of library code + ~76k generated TL |
| Tests | 118 test files. Default run: 1 190 expectations, **708 skipped** by `skip_on_cran()`. Full run: see below | Large suite plus years of production use |
| Unknown constructor or parse error | **Silently swallows the rest of the buffer** (`list(CONSTRUCTOR_ID, data = read(remaining))`), and `.telegramR_read_channel_messages` stops at the first bad message with `break` | Raises `TypeNotFoundError` |
| Schema handling | Generic generated readers plus about 10 hand-written special cases (`User`, `Channel`, `ChannelFull`, `messages.*`), some marked "legacy" | Fully generated from `api.tl` |
| String encoding | Not marked UTF-8 (locale-dependent mojibake; also the 1 failing test) | `str` is always Unicode |
| Return types | Mixed: `ChannelMessages` decodes to a plain `list`, while `Message$date` is a raw integer and `tgread_date()` returns `POSIXct` | Consistent typed objects and `datetime` |
| API naming | Mixed `camelCase`/`snake_case` (`offsetId`, `fromReader`/`tgreadObject` vs `tgread_object`). There are 183 `reader$tgreadObject()` calls in `$fromReader` class methods, and that method does not exist on `BinaryReader` (dead or broken code path) | Consistent |
| Test-only branch in prod code | `decrypt_message_data()` returns `raw(0)` early when `TESTTHAT=="true"`, so tests never exercise real decryption | None |
| Session ID | 31-bit (`sample.int(.Machine$integer.max)`) | 64-bit random |
| Repo hygiene | macOS-built `src/*.o` and `src/telegramR.so` are committed, so `R CMD INSTALL` from a git checkout **fails on Linux** until they are deleted. `tests/testthat/telegramR_init_trace.log` is committed | Clean |
| Features | Session persistence (RDS), FloodWait auto-sleep, updates/event handlers, takeout, uploads/downloads | Same plus StringSession/SQLite, mature reconnect and update gap recovery |
| Strength over Telethon | High-level, research-oriented helpers that return tibbles (`download_channel_messages`, reactions, replies, members, `batch_download_channels`) | Lower-level: the same work needs user code |

## Test-suite run

This was run with `NOT_CRAN=true LANG=C.UTF-8`.

* 117 of the 118 files ran: about **5 800 passing expectations, 0 failures, 28 skips**.
  Some skips hide real gaps. For example, `test-types.R` reports *"no Message\* classes found"*
  because it looks the classes up in the wrong environment.
* `test-types-sweep.R` did not finish within about 20 minutes, which is another symptom of
  slow R6 instantiation.
* The default run (`NOT_CRAN` unset, `C` locale) has 1 190 expectations, **708 skipped**, and
  1 failure: `test-binaryreader-deep.R:189`, the UTF-8 `tgread_string` bug above.
  CRAN therefore exercises only about 40% of the suite.

## Verdict

* **Protocol correctness at layer 229 is good** for the message-download path. Decoding
  and re-encoding are byte-exact against Telethon, and the AES-IGE cipher runs at C speed.
* **Speed is the main weakness.** TL (de)serialisation is about **300–500× slower** than
  Telethon, login (PQ factorisation) is about 150× slower, and cold start is about 8 s.
  For research-scale scraping, this makes telegramR CPU-bound where Telethon is network-bound.
* **Robustness is the second weakness.** Silent fallbacks hide parse failures, strings are
  locale-dependent, and the git checkout does not build on Linux because of the committed
  binaries.
* The quickest wins, in rough order of payoff, are:
  1. Build the ctor map once into a package-level environment (not `options()`).
  2. Drop the extra `cls$new()` and the per-call `environment(fn) <-` in `tgread_object()`.
  3. Use `R6Class(cloneable = FALSE)` and/or lighter S3/list objects for TL types.
  4. Move PQ factorisation and the int/bytes primitives to the existing C++ file.
  5. Mark strings as UTF-8 with `Encoding(x) <- "UTF-8"`.
  6. Raise an error instead of swallowing the rest of the buffer.
  7. Remove `src/*.o` and `src/*.so` from git.
