# telegramR (development version)

* Faster TL decoding: a 100-message `messages.ChannelMessages` page now parses
  about 2.5x faster, and the first parsed response after loading the package no
  longer spends ~8 s building the constructor map. The constructor index is
  computed at install time, cached outside `options()`, and TL classes are
  flattened on first use so R6 no longer builds a `super` object per instance.
* PQ factorisation during the auth-key handshake now runs in C++ (about 1000x
  faster), cutting several seconds from each new login or DC connection.
* Strings read from the wire are now marked as UTF-8, so non-ASCII text is no
  longer garbled under non-UTF-8 locales.
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
