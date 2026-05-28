# Send a Photo

Convenience wrapper to send a photo to a target entity.

## Usage

``` r
send_photo(client, entity, file, ...)
```

## Arguments

- client:

  TelegramClient instance.

- entity:

  Target entity (username, id, or TLObject).

- file:

  Photo file path or file-like object.

- ...:

  Additional arguments passed to \`TelegramClient\$send_message()\`
  (e.g., \`message\`, \`parse_mode\`, \`buttons\`).

## Value

The sent message object (or Updates result).
