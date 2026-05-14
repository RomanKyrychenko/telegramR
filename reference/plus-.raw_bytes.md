# Addition operator for raw_bytes

Allows using '+' to concatenate raw_bytes objects, mimicking Python's
byte concatenation.

## Usage

``` r
# S3 method for class 'raw_bytes'
e1 + e2
```

## Arguments

- e1:

  Left operand.

- e2:

  Right operand.

## Value

A new raw_bytes object.

## Examples

``` r
a <- as.raw(c(0x01, 0x02))
b <- as.raw(c(0x03, 0x04))
a + b
#> Error in a + b: non-numeric argument to binary operator
```
