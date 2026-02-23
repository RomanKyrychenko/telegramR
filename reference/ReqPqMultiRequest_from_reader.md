# Create ReqPqMultiRequest from a binary reader

Reads a 128-bit \`nonce\` from the provided \`reader\` and constructs a
\`ReqPqMultiRequest\` instance.

## Usage

``` r
ReqPqMultiRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing \`read_large_int(bits = 128)\`.

## Value

A new instance of \`ReqPqMultiRequest\`.
