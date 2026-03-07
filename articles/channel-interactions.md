# Channel Interactions: Members, Replies, and Reactions

## Goal

This short case study shows how to:

1.  Download channel members.
2.  Fetch replies (comments) to channel posts.
3.  Summarize reactions by emoji.

## Setup

``` r
library(telegramR)
library(dplyr)
library(stringr)
library(ggplot2)

api_id <- 123456
api_hash <- "0123456789abcdef0123456789abcdef"

client <- TelegramClient$new("my_session", api_id, api_hash)
client$start()
```

## Replies (Comments)

``` r
replies <- download_channel_replies(
  client,
  "V_Zelenskiy_official",
  message_limit = 20,
  reply_limit = Inf
)
```

## Reactions Breakdown

``` r
reactions <- download_channel_reactions(
  client,
  "V_Zelenskiy_official",
  limit = 200
)
```

``` r
emoji_counts <- reactions %>%
  filter(!is.na(reactions_json)) %>%
  mutate(reactions_json = ifelse(reactions_json == "{}", NA_character_, reactions_json)) %>%
  filter(!is.na(reactions_json))

emoji_counts
#> # A tibble: 117 × 7
#>    message_id channel_id channel_username     channel_title  date               
#>         <dbl>      <dbl> <chr>                <chr>          <dttm>             
#>  1      18225 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-06 11:55:27
#>  2      18215 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-06 11:06:58
#>  3      18206 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-06 10:45:49
#>  4      18205 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-05 18:51:29
#>  5      18204 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-05 18:08:48
#>  6      18203 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-05 17:58:49
#>  7      18202 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-05 17:35:52
#>  8      18201 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-05 16:56:28
#>  9      18200 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-05 15:51:24
#> 10      18199 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-05 14:44:43
#> # ℹ 107 more rows
#> # ℹ 2 more variables: reactions_total <dbl>, reactions_json <chr>
```
