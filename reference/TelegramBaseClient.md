# TelegramBaseClient

Low-level Telegram MTProto client. Most users should use
`TelegramClient`.

## Usage

``` r
TelegramBaseClient
```

## Details

This is an R6 class providing lower-level transport and protocol
operations.

## Value

An R6 object of class `TelegramBaseClient`.

## See also

[`TelegramClient`](https://romankyrychenko.github.io/telegramR/reference/TelegramClient.md)

## Examples

``` r
if (FALSE) { # \dontrun{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "abc")
client$connect()
} # }
```
