# Encode Telegram Base64

Inverse operation for \`decode_telegram_base64\`. Encodes bytes into a
url-safe base64 string, stripping padding.

## Usage

``` r
encode_telegram_base64(bytes)
```

## Arguments

- bytes:

  A raw vector of bytes to encode.

## Value

A character string representing the url-safe base64-encoded data if
encoding succeeds, otherwise NULL.
