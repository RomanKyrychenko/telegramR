# Create InvokeWithoutUpdatesRequest from a binary reader

Reads a nested Telegram-style object using `reader$tgread_object()` and
constructs an `InvokeWithoutUpdatesRequest`.

## Usage

``` r
InvokeWithoutUpdatesRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing `tgread_object()`.

## Value

Instance of `InvokeWithoutUpdatesRequest`.
