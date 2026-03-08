# Send a Video

Convenience wrapper to send a video to a target entity.

## Usage

``` r
send_video(client, entity, file, ...)
```

## Arguments

- client:

  TelegramClient instance.

- entity:

  Target entity (username, id, or TLObject).

- file:

  Video file path or file-like object.

- ...:

  Additional arguments passed to \`TelegramClient\$send_message()\`
  (e.g., \`message\`, \`supports_streaming\`, \`parse_mode\`,
  \`buttons\`).

## Value

The sent message object (or Updates result).
