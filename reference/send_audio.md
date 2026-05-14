# Send an Audio File

Convenience wrapper to send an audio file to a target entity.

## Usage

``` r
send_audio(client, entity, file, ...)
```

## Arguments

- client:

  TelegramClient instance.

- entity:

  Target entity (username, id, or TLObject).

- file:

  Audio file path or file-like object.

- ...:

  Additional arguments passed to \`TelegramClient\$send_message()\`
  (e.g., \`message\`, \`attributes\`, \`thumb\`, \`parse_mode\`,
  \`buttons\`).

## Value

The sent message object (or Updates result).

## Examples

``` r
if (FALSE) { # \dontrun{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "abc")
client$connect()

send_audio(client, "me", "audio.mp3")
} # }
```
