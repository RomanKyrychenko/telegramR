# Create InvokeWithTakeoutRequest from a binary reader

Reads a 64-bit \`takeout_id\` and a nested \`query\` object from the
provided \`reader\`, then constructs an `InvokeWithTakeoutRequest`
instance.

## Usage

``` r
InvokeWithTakeoutRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing: - \`read_long()\` to read 64-bit integers, -
  \`tgread_object()\` to read nested Telegram objects.

## Value

Instance of `InvokeWithTakeoutRequest`.

## Examples

``` r
if (FALSE) { # \dontrun{
# reader <- Reader$new(source)
# req <- InvokeWithTakeoutRequest_from_reader(reader)
} # }
```
