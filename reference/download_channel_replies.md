# Download Channel Replies/Comments By Channel

Fetches replies (comments) to channel posts by username or numeric id.

## Usage

``` r
download_channel_replies(
  client,
  channel,
  message_ids = NULL,
  message_limit = 100,
  reply_limit = Inf,
  include_channel = TRUE,
  show_progress = TRUE,
  output_file = NULL,
  chunk_size = 5000L,
  ...
)
```

## Arguments

- client:

  TelegramClient instance.

- channel:

  character or numeric. Channel username (with or without "@") or
  numeric id.

- message_ids:

  integer vector or NULL. If NULL, replies are fetched for the most
  recent posts.

- message_limit:

  integer. Number of recent posts to inspect when message_ids is NULL.

- reply_limit:

  integer or Inf. Maximum number of replies per post.

- include_channel:

  logical. If TRUE, include channel fields on every row.

- show_progress:

  logical. If TRUE, display a progress bar.

- output_file:

  character or NULL. If set, replies are streamed to this CSV file in
  chunks instead of being accumulated in memory.

- chunk_size:

  integer. Number of rows to buffer before flushing to `output_file`.
  Only used when `output_file` is not NULL.

- ...:

  Passed to client\$iter_messages() when fetching recent posts.

## Value

A tibble.
