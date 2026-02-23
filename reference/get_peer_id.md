# Get Peer ID

Convert the given peer into its marked ID by default.

## Usage

``` r
get_peer_id(peer, add_mark = TRUE)
```

## Arguments

- peer:

  The peer object or integer to convert.

- add_mark:

  Logical, whether to add the mark (default TRUE).

## Value

The marked or unmarked peer ID as an integer.

## Details

This "mark" comes from the "bot api" format, and with it the peer type
can be identified back. User ID is left unmodified, chat ID is negated,
and channel ID is "prefixed" with -100:

\* `user_id` \* `-chat_id` \* `-100channel_id`

The original ID and the peer type class can be returned with a call to
`resolve_id(marked_id)`.

## Examples

``` r
if (FALSE) { # \dontrun{
# Assuming peer is a PeerUser object
id <- get_peer_id(peer)
} # }
```
