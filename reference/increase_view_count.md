# Increase view count for channel messages

Increase view count for channel messages

## Usage

``` r
increase_view_count(client, channel, message_ids)
```

## Arguments

- client:

  TelegramClient instance.

- channel:

  Channel (username, link, or entity).

- message_ids:

  Numeric vector of message IDs.

## Value

The API response (views).

## Examples

``` r
if (FALSE) { # \dontrun{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "abc")
client$connect()

increase_view_count(client, "channelname", message_ids = 1:10)
} # }
```
