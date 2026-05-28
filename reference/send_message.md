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
