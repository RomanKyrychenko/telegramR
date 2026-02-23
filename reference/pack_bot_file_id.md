# Pack Bot File ID

Inverse operation for \`resolve_bot_file_id\`. This function takes a
Document or Photo object and returns a variable-length base64-encoded
\`file_id\` string. If an invalid parameter is given, it returns NULL.

## Usage

``` r
pack_bot_file_id(file)
```

## Arguments

- file:

  A Document or Photo object (or MessageMediaDocument/MessageMediaPhoto
  wrapper).

## Value

A base64-encoded string representing the file ID, or NULL if invalid.
