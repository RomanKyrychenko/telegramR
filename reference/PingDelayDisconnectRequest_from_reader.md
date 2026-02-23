# Create PingDelayDisconnectRequest from a binary reader

Reads a 64-bit `ping_id` and a 32-bit `disconnect_delay` from the
provided `reader` and constructs a `PingDelayDisconnectRequest`.

## Usage

``` r
PingDelayDisconnectRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing `read_long()` and `read_int()`.

## Value

Instance of `PingDelayDisconnectRequest`.
