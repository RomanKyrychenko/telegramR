# Create InvokeWithApnsSecretRequest from a binary reader

Reads \`nonce\` and \`secret\` as Telegram-style strings and then reads
the nested \`query\` object using the reader's \`tgread_object()\`
method.

## Usage

``` r
InvokeWithApnsSecretRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing: - \`tgread_string()\` to read Telegram-style
  strings, - \`tgread_object()\` to read nested Telegram objects.

## Value

Instance of \`InvokeWithApnsSecretRequest\`.

## Examples

``` r
if (FALSE) { # \dontrun{
# reader <- Reader$new(source)
# req <- InvokeWithApnsSecretRequest_from_reader(reader)
} # }
```
