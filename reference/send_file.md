# Send a File

Convenience wrapper around \`TelegramClient\$send_message()\` that sends
a file and resolves futures/promises.

## Usage

``` r
send_file(client, entity, file, ...)
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
  (e.g., \`message\`, \`force_document\`, \`attributes\`, \`thumb\`,
  \`parse_mode\`).

## Value

The sent message object (or Updates result).
