# Create PingRequest from a binary reader

Reads a 64-bit `ping_id` from `reader` and constructs a `PingRequest`.

## Usage

``` r
PingRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing `read_long()`.

## Value

Instance of `PingRequest`.
