# Downloading Channel Media

## Introduction

This vignette shows how to download media (photos/videos/documents) from
a Telegram channel using `download_channel_media()`.

## Setup and Authentication

``` r
library(telegramR)

# Replace these with your own API ID and Hash
api_id <- 123456
api_hash <- "0123456789abcdef0123456789abcdef"

client <- TelegramClient$new("my_session", api_id, api_hash)
client$start()
```

## Download Media

``` r
# Download media into ./downloads
media <- download_channel_media(
  client,
  "telegram",
  limit = 200,
  media_types = c("photo", "video"),
  start_date = "2025-01-01",
  end_date = "2025-02-01",
  out_dir = "downloads"
)

# Inspect results
head(media)
```

## Common Columns

The result is a tibble with one row per downloaded media item. Typical
columns include:

- `message_id`, `channel_id`, `channel_username`, `channel_title`
- `date`, `text`, `media_type`
- `file_path`, `error`

## Tips

- Use `start_date`/`end_date` to restrict the window and speed up
  downloads.
- Use `media_types` to select only photos or only videos.
- If you hit rate limits, add a small `wait_time` (e.g.,
  `wait_time = 1`).
