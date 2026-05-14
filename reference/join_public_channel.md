# Join a public channel by username

Join a public channel by username

## Usage

``` r
join_public_channel(client, channel)
```

## Arguments

- client:

  TelegramClient instance.

- channel:

  Public channel username or link (non-invite).

## Value

The API response.

## Examples

``` r
if (FALSE) { # \dontrun{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "abc")
client$connect()

join_public_channel(client, "channelname")
} # }
```
