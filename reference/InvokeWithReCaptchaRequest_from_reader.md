# Create InvokeWithReCaptchaRequest from a binary reader

Reads a \`token\` as a Telegram-style string and then reads the nested
\`query\` object using the reader's \`tgread_object()\` method.

## Usage

``` r
InvokeWithReCaptchaRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing: - \`tgread_string()\` to read Telegram-style
  strings, - \`tgread_object()\` to read nested Telegram objects.

## Value

Instance of \`InvokeWithReCaptchaRequest\`.
