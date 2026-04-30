# Downloading Channel Media

## Introduction

This vignette shows how to download media (photos/videos/documents) from
a Telegram channel using
[`download_channel_media()`](https://romankyrychenko.github.io/telegramR/reference/download_channel_media.md).

## Offline Demo (No Telegram Connection)

To keep this vignette fully reproducible, the output below is generated
from a small bundled sample dataset. The commands shown are real; if you
have credentials and a live session, you can run them by setting
`eval=TRUE` in your environment.

## Setup and Authentication

``` r

library(telegramR)
library(dplyr)

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
```

``` r

# Inspect results
media
#> # A tibble: 2 × 9
#>   message_id channel_id channel_username channel_title date               
#>        <dbl>      <dbl> <chr>            <chr>         <dttm>             
#> 1      28508 1149277960 ShrikeNews       Шрайк Ньюс    2026-03-06 11:22:24
#> 2      28495 1149277960 ShrikeNews       Шрайк Ньюс    2026-03-06 08:48:16
#> # ℹ 4 more variables: media_type <chr>, file_path <chr>,
#> #   original_filename <chr>, error <chr>
```

``` r

photo_path <- media %>% 
  filter(media_type == "photo") %>% 
  slice(1) %>% 
  pull(file_path)

pkg_path <- paste0("../", photo_path)

knitr::include_graphics(pkg_path)
```

![](../inst/extdata/articles/downloads/photo_2026-03-06_11-22-24.jpg)

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
- Some channels send photos as documents (`image/*`).
  [`download_channel_media()`](https://romankyrychenko.github.io/telegramR/reference/download_channel_media.md)
  treats `image` as a photo-type alias when `photo` is requested.
