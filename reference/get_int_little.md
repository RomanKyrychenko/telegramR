# Convert a raw byte array in little-endian order to an integer.

Convert a raw byte array in little-endian order to an integer.

## Usage

``` r
get_int_little(byte_array, signed = TRUE)
```

## Arguments

- byte_array:

  A raw vector in little-endian order.

- signed:

  Logical; whether the integer is signed.

## Value

An integer converted from the byte array.
