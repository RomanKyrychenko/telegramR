# Create InvokeWithBusinessConnectionRequest from a reader

Reads a \`connection_id\` (Telegram-style string) and a nested \`query\`
object from the provided \`reader\`, then constructs an
\`InvokeWithBusinessConnectionRequest\` instance.

## Usage

``` r
InvokeWithBusinessConnectionRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing: - \`tgread_string()\` to read Telegram-style
  strings, - \`tgread_object()\` to read nested Telegram objects.

## Value

Instance of \`InvokeWithBusinessConnectionRequest\`.
