# Resolve Inline Message ID

Resolves an inline message ID. Returns a list of
`(message_id, peer, dc_id, access_hash)`.

## Usage

``` r
resolve_inline_message_id(inline_msg_id)
```

## Arguments

- inline_msg_id:

  A character string representing the inline message ID.

## Value

A list containing message_id, peer, dc_id, access_hash, or NULLs if
invalid.

## Details

The `peer` may either be a `PeerUser` referencing the user who sent the
message via the bot in a private conversation or small group chat, or a
`PeerChannel` if the message was sent in a channel.

The `access_hash` does not have any use yet.
