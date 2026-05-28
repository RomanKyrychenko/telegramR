# Download Full Channel Info By Channel

Fetches channel entity and full channel info by username or numeric id
and returns a tibble.

## Usage

``` r
download_channel_info(
  client,
  channel,
  region = NULL,
  include_raw = FALSE,
  timeout_sec = getOption("telegramR.iter_timeout", 60),
  reconnect_on_timeout = TRUE,
  max_attempts = 3,
  skip_estimate = FALSE,
  hard_timeout_sec = NULL
)
```

## Arguments

- client:

  TelegramClient instance.

- channel:

  character or numeric. Channel username (with or without "@") or
  numeric id.

- region:

  character or NULL. Optional region tag to attach.

- include_raw:

  logical. If TRUE, include raw Telegram objects as list columns.

- timeout_sec:

  numeric. Timeout in seconds for network operations.

- reconnect_on_timeout:

  logical. Reconnect on timeout if TRUE.

- max_attempts:

  integer. Number of retry attempts for resolving and full info.

- skip_estimate:

  logical. If TRUE, skip estimate step for last_message_id.

- hard_timeout_sec:

  numeric or NULL. Optional hard time limit for the whole call.

## Value

A tibble with flattened channel info and optional list columns for raw
objects.
