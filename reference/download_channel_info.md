# Download Full Channel Info By Channel

Fetches channel entity and full channel info by username or numeric id
and returns a tibble.

## Usage

``` r
download_channel_info(client, channel, region = NULL, include_raw = FALSE)
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

## Value

A tibble with flattened channel info and optional list columns for raw
objects.
