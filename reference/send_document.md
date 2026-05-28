# Send a Document

Convenience wrapper to send a document (file) to a target entity.

## Usage

``` r
send_document(client, entity, file, ...)
```

## Arguments

- client:

  TelegramClient instance.

- entity:

  Target entity (username, id, or TLObject).

- file:

  File path or file-like object.

- ...:

  Additional arguments passed to \`TelegramClient\$send_message()\`
  (e.g., \`message\`, \`attributes\`, \`thumb\`, \`parse_mode\`,
  \`buttons\`).

## Value

The sent message object (or Updates result).
