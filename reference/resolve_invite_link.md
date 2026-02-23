# Resolve Invite Link

Resolves the given invite link. Returns a list of
`(link creator user id, global chat id, random int)`.

## Usage

``` r
resolve_invite_link(link)
```

## Arguments

- link:

  A character string representing the invite link.

## Value

A list containing link creator user id, global chat id, random int, or a
list of three NULLs if invalid.

## Details

Note that for broadcast channels or with the newest link format, the
link creator user ID will be zero to protect their identity. Normal
chats and megagroup channels will have such ID.

Note that the chat ID may not be accurate for chats with a link that
were upgraded to megagroup, since the link can remain the same, but the
chat ID will be correct once a new link is generated.
