# Serialize data to bytes.

This function serializes data to a byte array. It handles both raw data
and character strings.

## Usage

``` r
serialize_bytes(data)
```

## Arguments

- data:

  The data to be serialized.

## Value

A raw vector representing the serialized data.

## Examples

``` r
if (FALSE) { # \dontrun{
serialize_bytes(charToRaw("test"))
serialize_bytes("test")
} # }
```
