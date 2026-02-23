# Create ReqDHParamsRequest from a binary reader

Reads fields for a ReqDHParamsRequest from a \`reader\` and constructs
the corresponding R6 instance. Expected reader helpers: -
`read_large_int(bits = 128)` for 128-bit nonces, - `tgread_bytes()` for
Telegram-style byte arrays, - `read_long()` for 64-bit integers.

## Usage

``` r
ReqDHParamsRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing binary read helpers as described above.

## Value

Instance of `ReqDHParamsRequest`.
