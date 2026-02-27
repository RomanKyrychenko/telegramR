# Download Full Channel Info By Username

Fetches channel entity and full channel info by username and returns a
tibble.

## Usage

``` r
download_channel_info(client, username, region = NULL, include_raw = FALSE)
```

## Arguments

- client:

  TelegramClient instance.

- username:

  character. Channel username (with or without "@").

- region:

  character or NULL. Optional region tag to attach.

- include_raw:

  logical. If TRUE, include raw Telegram objects as list columns.

## Value

A tibble with flattened channel info and optional list columns for raw
objects.
