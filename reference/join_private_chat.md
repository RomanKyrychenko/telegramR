# Join a private chat or channel by invite link

Join a private chat or channel by invite link

## Usage

``` r
join_private_chat(client, invite_link)
```

## Arguments

- client:

  TelegramClient instance.

- invite_link:

  Invite link (e.g. https://t.me/joinchat/... or https://t.me/+...).

## Value

The API response.

## Examples

``` r
if (FALSE) { # \dontrun{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "abc")
client$connect()

join_private_chat(client, "https://t.me/+xxxx")
} # }
```
