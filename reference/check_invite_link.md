# Check a chat invite link without joining

Check a chat invite link without joining

## Usage

``` r
check_invite_link(client, invite_link)
```

## Arguments

- client:

  TelegramClient instance.

- invite_link:

  Invite link or invite hash.

## Value

The API response.

## Examples

``` r
if (FALSE) { # \dontrun{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "abc")
client$connect()

check_invite_link(client, "https://t.me/+xxxx")
} # }
```
