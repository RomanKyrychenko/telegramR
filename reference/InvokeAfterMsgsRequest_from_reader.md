# Create InvokeAfterMsgsRequest from a binary reader

Read and parse an \`InvokeAfterMsgsRequest\` from a \`reader\`. The
reader is expected to provide a vector constructor marker (ignored), the
number of message ids, each message id as a 64-bit integer, and then a
nested object for \`query\`.

## Usage

``` r
InvokeAfterMsgsRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing: - \`read_int()\` to read 32-bit integers, -
  \`read_long()\` to read 64-bit integers, - \`tgread_object()\` to read
  nested Telegram objects.

## Value

Instance of \`InvokeAfterMsgsRequest\` with \`msg_ids\` (list of longs)
and \`query\`.
