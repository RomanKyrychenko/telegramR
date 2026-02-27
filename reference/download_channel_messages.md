# Download Channel Messages By Channel

Fetches messages for a channel by username or numeric id and returns a
tibble with message fields and nested structures as list columns.

## Usage

``` r
download_channel_messages(
  client,
  channel,
  limit = Inf,
  include_channel = TRUE,
  start_date = NULL,
  end_date = NULL,
  show_progress = TRUE,
  ...
)
```

## Arguments

- client:

  TelegramClient instance.

- channel:

  character or numeric. Channel username (with or without "@") or
  numeric id.

- limit:

  integer or Inf. Maximum number of messages to fetch.

- include_channel:

  logical. If TRUE, include channel fields on every row.

- start_date:

  POSIXct/Date/character. Earliest date to include (UTC).

- end_date:

  POSIXct/Date/character. Latest date to include (UTC).

- show_progress:

  logical. If TRUE, display a progress bar.

- ...:

  Passed to client\$iter_messages() (e.g. offset_id, max_id, min_id).

## Value

A tibble.
