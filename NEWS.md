# telegramR (development version)

* Faster TL decoding: a 100-message `messages.ChannelMessages` page now parses
  about 2.5x faster as full objects, and the first parsed response after loading the package no
  longer spends ~8 s building the constructor map. The constructor index is
  computed at install time, cached outside `options()`, and TL classes are
  flattened on first use so R6 no longer builds a `super` object per instance.
* PQ factorisation during the auth-key handshake now runs in C++ (about 1000x
  faster), cutting several seconds from each new login or DC connection.
* Strings read from the wire are now marked as UTF-8, so non-ASCII text is no
  longer garbled under non-UTF-8 locales.
* `download_channel_messages()`, `download_channel_reactions()` and
  `download_channel_replies()` decode messages as lightweight lists instead of
  R6 objects (opt out with `options(telegramR.lite_messages = FALSE)`); with
  the other changes a 100-message page decodes about 7x faster than in 0.0.2
  (about 5x faster from raw response to tibble rows).
* 64-bit TL longs are decoded natively (still returned as `gmp::bigz`).
* Fixed `download_channel_reactions()` and `download_channel_replies()`
  reporting zero reactions (`reactions_json = "[]"`) for every message.
* Decoding problems are no longer silent: an unknown constructor or a parser
  error raises a `telegramR_parse_warning`, and a `messages.channelMessages`
  page that could not be fully decoded is marked `incomplete = TRUE`.
* MTProto session ids are now random 64-bit values (previously 31-bit).
* The request classes' `$fromReader()` methods now work with a real
  `BinaryReader` (it gained the camelCase method names they call).
* `MTProtoState$decrypt_message_data()` no longer short-circuits when running
  under testthat; its tests now decrypt real server-direction messages.
* Removed compiled objects (`src/*.o`, `src/*.so`) from version control; they
  broke installation from a git checkout on other platforms.

# telegramR 0.0.2

* Removed unused sample video files from `inst/extdata`, shrinking the source
  tarball to ~3.4Mb (under CRAN's 5Mb guideline).

* Exported `TelegramClient`, the high-level client class, so `TelegramClient$new()`
  works after `library(telegramR)` (its `@export` had been in a comment that
  roxygen ignored, leaving it inaccessible).

* Synced the bundled 'Telegram' TL schema to layer 229 and regenerated all TL
  type and request classes, fixing dialog and message parsing against current
  'Telegram' servers.
* Reworked the schema code-generation tooling in `data-raw/` entirely in R
  (`generate_tl.R`, `overwrite_stale.R`, `dedupe_types.R`, `emit_missing.R`,
  and the `regenerate.R` pipeline), replacing the previous scripts. The
  pipeline is idempotent and documents every generated class with roxygen.
* Fixed serialisation of 64-bit integers and byte fields, and the
  send-media chain.
* Fixed the asynchronous test helpers to resolve `promises` objects, and a
  latent unqualified `openssl::rand_bytes()` call in the obfuscated transport.

# telegramR 0.0.1

* Initial CRAN release.
* Full MTProto client for Telegram: authentication, serialisation/deserialisation
  of the TL schema, encrypted transport, and session management.
* High-level helpers for downloading channel messages, reactions, and replies
  at scale (`download_channel_messages()`, `batch_download_channels()`).
* Two-factor authentication support via `PasswordKdf`.
* Story support via `functions_stories.R` request classes.
