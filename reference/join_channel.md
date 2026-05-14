# Join a chat or channel by username or invite link

Join a chat or channel by username or invite link

## Usage

``` r
join_channel(client, channel)
```

## Arguments

- client:

  TelegramClient instance.

- channel:

  Username/link or invite link.

## Value

The API response.

## Examples

``` r
if (FALSE) { # \dontrun{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "abc")
client$connect()

join_channel(client, "channelname")
} # }
```
