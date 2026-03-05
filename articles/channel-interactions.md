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
#> # A tibble: 134 × 7
#>    message_id channel_id channel_username     channel_title  date               
#>         <dbl>      <dbl> <chr>                <chr>          <dttm>             
#>  1      18175 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-05 08:38:24
#>  2      18174 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-05 08:33:58
#>  3      18173 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-05 08:23:36
#>  4      18172 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-05 08:16:00
#>  5      18171 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-05 08:06:47
#>  6      18170 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-04 20:01:55
#>  7      18169 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-04 19:02:30
#>  8      18168 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-04 18:44:13
#>  9      18167 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-04 18:03:26
#> 10      18158 1463721328 V_Zelenskiy_official Zelenskiy / O… 2026-03-04 17:39:29
#> # ℹ 124 more rows
#> # ℹ 2 more variables: reactions_total <dbl>, reactions_json <chr>
```
