# Downloading Channel Data

## Introduction

This vignette demonstrates how to download data from Telegram channels
using the `telegramR` package. The `telegramR` package provides an R6
client interface similar to Python’s Telethon.

## Setup and Authentication

First, you need to load the package and instantiate a `TelegramClient`.
You will need your `api_id` and `api_hash` which you can get from
[my.telegram.org](https://my.telegram.org).

``` r
library(telegramR)

# Replace these with your own API ID and Hash
api_id <- 123456
api_hash <- "0123456789abcdef0123456789abcdef"

# Create a client instance
client <- TelegramClient$new("my_session", api_id, api_hash)

# Start the client (this will prompt for your phone number and login code if not already authorized)
client$start()
```

## Getting the Channel Entity

Before downloading messages, you need to resolve the channel entity. You
can do this using the channel’s username (e.g., `@RData`) or invite
link.

``` r
# Resolve the channel entity
channel <- client$get_entity("telegram") 
```

## Downloading Messages

To download messages from the channel, you can use the `get_messages` or
`iter_messages` methods.

### Getting Recent Messages

If you just want a specific number of recent messages, use
`get_messages`:

``` r
# Get the 100 most recent messages from the channel
messages <- client$get_messages(channel, limit = 100)

# The result is a list of message objects
# You can extract text from them:
texts <- sapply(messages, function(msg) msg$message)
head(texts)
```

### Iterating Over All Messages

If you want to download the entire history of a channel, it is
recommended to use `iter_messages`. Note that downloading thousands of
messages might take time due to Telegram’s API limits.

``` r
# Iterate and collect messages (requires implementing a custom loop or using do.call)
history <- list()
iterator <- client$iter_messages(channel)

# Collect messages in chunks
messages <- client$get_messages(channel, limit = 1000)

# Create a data frame summarizing the downloaded messages
df <- data.frame(
  id = sapply(messages, function(m) m$id),
  date = sapply(messages, function(m) as.POSIXct(m$date, origin="1970-01-01")),
  text = sapply(messages, function(m) m$message),
  views = sapply(messages, function(m) if(!is.null(m$views)) m$views else NA),
  stringsAsFactors = FALSE
)

head(df)
```

## Downloading Media

If the messages contain media (such as photos or documents), you can
download them using `download_media`:

``` r
# Find the first message with media
msgs_with_media <- Filter(function(m) !is.null(m$media), messages)

if (length(msgs_with_media) > 0) {
  # Download the media from the first message
  file_path <- client$download_media(msgs_with_media[[1]])
  print(paste("Media downloaded to:", file_path))
}
```

## Disconnecting

Once you have finished downloading the data, ensure that you disconnect
the client to safely close the session:

``` r
client$disconnect()
```
