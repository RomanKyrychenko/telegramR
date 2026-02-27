# Estimate Channel Post Count (Approx)

Gets the latest message ID and uses it as an upper-bound estimate of
total posts. This is approximate due to deletions and gaps in message
IDs.

## Usage

``` r
estimate_channel_post_count(client, username)
```

## Arguments

- client:

  TelegramClient instance.

- username:

  character. Channel username (with or without "@").

## Value

A tibble with last_message_id, approx_total_posts, and note.
