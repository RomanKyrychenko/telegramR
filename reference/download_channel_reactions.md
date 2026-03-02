# Download Channel Reactions By Channel

Fetches message reactions for a channel by username or numeric id.

## Usage

``` r
download_channel_reactions(
  client,
  channel,
  limit = Inf,
  start_date = NULL,
  end_date = NULL,
  include_channel = TRUE,
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

- start_date:

  POSIXct/Date/character. Earliest date to include (UTC).

- end_date:

  POSIXct/Date/character. Latest date to include (UTC).

- include_channel:

  logical. If TRUE, include channel fields on every row.

- show_progress:

  logical. If TRUE, display a progress bar.

- ...:

  Passed to client\$iter_messages() (e.g. offset_id, max_id, min_id).

## Value

A tibble.
