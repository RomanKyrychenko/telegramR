# Create InvokeWithGooglePlayIntegrityRequest from a reader

Reads \`nonce\` and \`token\` as Telegram-style strings and then reads
the nested \`query\` object using the reader's \`tgread_object()\`
method.

## Usage

``` r
InvokeWithGooglePlayIntegrityRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing: - \`tgread_string()\` to read Telegram-style
  strings, - \`tgread_object()\` to read nested Telegram objects.

## Value

Instance of \`InvokeWithGooglePlayIntegrityRequest\`.
