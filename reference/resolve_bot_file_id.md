# Resolve Bot File ID

Given a Bot API-style \`file_id\`, returns the media it represents. If
the \`file_id\` is not valid, \`NULL\` is returned instead.

## Usage

``` r
resolve_bot_file_id(file_id)
```

## Arguments

- file_id:

  A character string representing the Bot API-style file ID.

## Value

A \`Document\` or \`Photo\` object if valid, otherwise \`NULL\`.

## Details

Note that the \`file_id\` does not have information such as image
dimensions or file size, so these will be zero if present.

For thumbnails, the photo ID and hash will always be zero.
