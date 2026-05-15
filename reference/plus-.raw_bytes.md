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
a <- structure(as.raw(c(0x01, 0x02)), class = c("raw_bytes", "raw"))
b <- as.raw(c(0x03, 0x04))
a + b
#> [1] 01 02 03 04
#> attr(,"class")
#> [1] "raw_bytes" "raw"      
```
