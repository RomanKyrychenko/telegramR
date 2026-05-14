# Addition operator for raw (fallback)

This is tricky because we can't easily override '+' for base 'raw' type.
But if the first operand is 'raw_bytes', it works. If the first operand
is 'raw', we might need to cast it.

## Usage

``` r
# S3 method for class 'raw'
e1 + e2
```

## Arguments

- e1:

  Left operand (raw vector).

- e2:

  Right operand (raw vector).

## Value

A new raw_bytes object.

## Examples

``` r
a <- as.raw(c(0x01, 0x02))
b <- as.raw(c(0x03, 0x04))
a + b
#> Error in a + b: non-numeric argument to binary operator
```
