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

## Examples

``` r
if (FALSE) { # \dontrun{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "abc")
client$connect()

send_photo(client, "me", "photo.jpg")
} # }
```
