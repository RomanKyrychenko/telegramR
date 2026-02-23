# Default JSON serialization function.

This function is used to serialize various data types to JSON format. It
handles raw data, POSIXt objects, and other types.

## Usage

``` r
json_default(value)
```

## Arguments

- value:

  The value to be serialized.

## Value

A character string representing the serialized value.

## Examples

``` r
if (FALSE) { # \dontrun{
json_default(charToRaw("test"))
json_default(as.POSIXct("2023-01-01 12:00:00", tz = "UTC"))
json_default(123)
} # }
```
