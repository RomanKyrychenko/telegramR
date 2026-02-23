# Create InvokeAfterMsgRequest from a binary reader

Reads a message identifier and a nested object from `reader` and
constructs an `InvokeAfterMsgRequest` instance.

## Usage

``` r
InvokeAfterMsgRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing `read_long()` and `tgread_object()`.

## Value

Instance of `InvokeAfterMsgRequest`.
