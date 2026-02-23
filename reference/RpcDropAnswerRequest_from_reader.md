# Create RpcDropAnswerRequest from a binary reader

Reads a 64-bit `req_msg_id` from the provided `reader` and constructs an
instance of `RpcDropAnswerRequest`.

## Usage

``` r
RpcDropAnswerRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing `read_long()` to read 64-bit integers.

## Value

Instance of `RpcDropAnswerRequest`.
