# Generate a random long integer (8 bytes), optionally signed

Generate a random long integer (8 bytes), optionally signed

## Usage

``` r
generate_random_long(signed = TRUE)
```

## Arguments

- signed:

  Logical indicating if the integer should be signed (default TRUE)

## Value

A random long integer

## Examples

``` r
if (FALSE) { # \dontrun{
random_long <- generate_random_long()
print(random_long)
random_unsigned_long <- generate_random_long(signed = FALSE)
print(random_unsigned_long)
} # }
```
