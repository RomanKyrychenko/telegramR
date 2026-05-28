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
  since_message_id = NULL,
  show_progress = TRUE,
  timeout_sec = getOption("telegramR.iter_timeout", 60),
  max_timeouts = 3,
  reconnect_on_timeout = TRUE,
  output_file = NULL,
  chunk_size = 5000L,
  partial_on_error = TRUE,
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

- since_message_id:

  integer or NULL. If set, only fetch messages with id \> this value
  (incremental/resume download). Maps to `min_id` in the API.

- show_progress:

  logical. If TRUE, display a progress bar.

- timeout_sec:

  numeric. Max seconds to wait per fetch before retrying. Use 0 to
  disable.

- max_timeouts:

  integer. Number of timeouts to tolerate before aborting.

- reconnect_on_timeout:

  logical. If TRUE, reconnect client on timeout.

- output_file:

  character or NULL. When set, rows are written to this CSV file in
  chunks rather than accumulated in memory. Returns the row count
  invisibly instead of a tibble. Appends to the file if it already
  exists (adds header only on first write).

- chunk_size:

  integer. Number of rows to buffer before each write when `output_file`
  is set. Default 5000.

- partial_on_error:

  logical. If TRUE (default), non-timeout errors emit a warning and
  return the rows collected so far rather than throwing. If FALSE,
  errors propagate immediately.

- ...:

  Passed to client\$iter_messages() (e.g. offset_id, max_id, min_id).

## Value

A tibble (or invisible row count when `output_file` is set).
