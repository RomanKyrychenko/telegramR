# Send a Message

Convenience wrapper around \`TelegramClient\$send_message()\` that
resolves futures/promises and returns the sent message (or Updates
object).

## Usage

``` r
send_message(client, entity, ...)
```

## Arguments

- client:

  TelegramClient instance.

- entity:

  Target entity (username, id, or TLObject).

- ...:

  Passed to \`TelegramClient\$send_message()\`.

## Value

The sent message object (or Updates result).

## Examples

``` r
if (FALSE) { # \dontrun{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "abc")
client$connect()

send_message(client, "me", message = "Hello!")
} # }
```
