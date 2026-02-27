# Downloading Channel Data

## Introduction

This vignette demonstrates how to download channel data with `telegramR`
using the high‑level helpers.

## Setup and Authentication

``` r
library(telegramR)

# Replace these with your own API ID and Hash
api_id <- 123456
api_hash <- "0123456789abcdef0123456789abcdef"

client <- TelegramClient$new("my_session", api_id, api_hash)
client$start()
```

## Download Messages

``` r
# Download the most recent 200 messages from a channel
msgs <- download_channel_messages(
  client,
  "telegram",
  limit = 200
)

msgs
```

The returned tibble includes a compact, analysis‑ready schema:

- `message_id`, `date`, `text`
- `views`, `forwards`, `replies`
- `reactions_total`, `reactions_json`
- `media_type`, `is_forward`, `forward_from_id`, `forward_from_name`
- `reply_to_msg_id`, `edit_date`, `post_author`
- `channel_id`, `channel_username`, `channel_title`

## Download Channel Info

``` r
info <- download_channel_info(client, "telegram")
info
```

## Estimate Total Posts (Approx.)

This returns the latest message id as an **upper‑bound estimate**.

``` r
estimate_channel_post_count(client, "telegram")
```

## Download Media

``` r
# Find the first message with media
first_media <- msgs[which(!is.na(msgs$media_type) & msgs$media_type != ""), ][1, ]

if (nrow(first_media) > 0) {
  # You can still use download_media on the underlying message object
  # if you need the original media data.
}
```

## Disconnect

``` r
client$disconnect()
```

``` r
# Download a date range (UTC)
msgs_range <- download_channel_messages(
  client,
  "telegram",
  start_date = "2025-01-01",
  end_date   = "2025-02-01",
  limit      = Inf
)
```

## Download Reactions

``` r
reactions <- download_channel_reactions(
  client,
  "telegram",
  limit = 500
)

reactions
```

## Download Replies (Comments)

``` r
# Fetch replies for the latest 20 posts
replies <- download_channel_replies(
  client,
  "telegram",
  message_limit = 20,
  reply_limit = Inf
)

replies
```

## Download Members

``` r
members <- download_channel_members(
  client,
  "telegram",
  limit = 500
)

members
```

## Numeric Channel IDs

All helpers accept a numeric channel id if it is available in your
session cache:

``` r
msgs_by_id <- download_channel_messages(client, 1234567890, limit = 100)
```
