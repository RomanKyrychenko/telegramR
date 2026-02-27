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

## 1) Members (Participants)

``` r
members <- download_channel_members(
  client,
  "V_Zelenskiy_official",
  limit = 500
)

members %>%
  count(is_bot, sort = TRUE)
```

## 2) Replies (Comments)

``` r
replies <- download_channel_replies(
  client,
  "V_Zelenskiy_official",
  message_limit = 20,
  reply_limit = Inf
)

replies %>%
  count(from_type, sort = TRUE)
```

## 3) Reactions Breakdown

``` r
reactions <- download_channel_reactions(
  client,
  "V_Zelenskiy_official",
  limit = 200
)

emoji_counts <- reactions %>%
  filter(!is.na(reactions_json)) %>%
  mutate(reactions_json = ifelse(reactions_json == "{}", NA_character_, reactions_json)) %>%
  filter(!is.na(reactions_json))

emoji_counts
```
