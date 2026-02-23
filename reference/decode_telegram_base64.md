# Decode Telegram Base64

Decodes a url-safe base64-encoded string into its bytes by first adding
the stripped necessary padding characters.

## Usage

``` r
decode_telegram_base64(string)
```

## Arguments

- string:

  A character string representing the url-safe base64-encoded data.

## Value

A raw vector of bytes if decoding succeeds, otherwise NULL.

## Details

This is the way Telegram shares binary data as strings, such as Bot
API-style file IDs or invite links.
