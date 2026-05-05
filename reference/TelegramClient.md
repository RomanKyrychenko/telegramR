# TelegramClient

High-level Telegram MTProto client. Use `TelegramClient$new()` to create
a session and connect.

## Usage

``` r
TelegramClient
```

## Details

This is an R6 class. Typical usage:


    client <- TelegramClient$new("my_session", api_id = 123, api_hash = "...")
    client$connect()

## See also

[`TelegramBaseClient`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.md)

## Examples

``` r
# \donttest{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "...")
#> Error: object 'TelegramClient' not found
client$connect()
#> Error: object 'client' not found
# }
```
