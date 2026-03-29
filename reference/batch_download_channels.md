# Batch Download Multiple Telegram Channels

Downloads info and messages for multiple channels in sequence, running
each channel in an isolated `callr` subprocess so crashes cannot corrupt
the parent session. Supports resume: channels already present in
`msgs_file` are skipped when `skip_completed = TRUE`.

## Usage

``` r
batch_download_channels(
  channels,
  session,
  api_id,
  api_hash,
  info_file = "channel_info.csv",
  msgs_file = "channel_messages.csv",
  reactions_file = NULL,
  replies_file = NULL,
  start_date = NULL,
  limit = Inf,
  timeout_sec = 30,
  max_timeouts = 5,
  chunk_size = 5000L,
  skip_completed = TRUE,
  dedup = TRUE,
  pkg_path = getwd(),
  verbose = TRUE
)
```

## Arguments

- channels:

  character vector. Channel usernames (with or without "@") or numeric
  ids.

- session:

  character. Path to the Telegram session file (passed to
  `TelegramClient$new()`).

- api_id:

  integer. Telegram API id.

- api_hash:

  character. Telegram API hash.

- info_file:

  character. CSV file for channel info rows (appended to).

- msgs_file:

  character. CSV file for message rows (appended to, streamed in
  `chunk_size` chunks to avoid RAM accumulation).

- reactions_file:

  character or NULL. If set, reaction counts are written to this CSV
  file.

- replies_file:

  character or NULL. If set, reply counts are written to this CSV file.

- start_date:

  character/Date/POSIXct or NULL. Passed to
  [`download_channel_messages()`](https://romankyrychenko.github.io/telegramR/reference/download_channel_messages.md).

- limit:

  integer or Inf. Max messages per channel.

- timeout_sec:

  numeric. Per-fetch timeout in seconds.

- max_timeouts:

  integer. Timeouts before aborting a single channel.

- chunk_size:

  integer. Rows buffered before each CSV flush.

- skip_completed:

  logical. If TRUE (default), skip channels whose username already
  appears in `msgs_file`.

- dedup:

  logical. If TRUE (default), skip messages already present in
  `msgs_file` based on `message_id`.

- pkg_path:

  character. Path to the package root; passed to
  [`devtools::load_all()`](https://devtools.r-lib.org/reference/load_all.html)
  inside the subprocess. Defaults to
  [`getwd()`](https://rdrr.io/r/base/getwd.html).

- verbose:

  logical. If TRUE (default), print progress messages.

## Value

A tibble with columns `channel`, `status` ("ok"/"skipped"/"error"),
`rows_downloaded`, `error_message`.
