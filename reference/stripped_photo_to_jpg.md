# Add JPG Header and Footer to Stripped Image

This function adds the JPG header and footer to a stripped image byte
array. It is ported from the Telegram Desktop source code.

## Usage

``` r
stripped_photo_to_jpg(stripped)
```

## Arguments

- stripped:

  A raw vector representing the stripped image bytes.

## Value

A raw vector with the JPG header and footer added, or the original
stripped bytes if the conditions are not met.

## Examples

``` r
if (FALSE) { # \dontrun{
# Assuming stripped is a raw vector from a stripped photo
stripped <- as.raw(c(0x01, 0x80, 0x60, ...)) # example bytes
jpg_bytes <- stripped_photo_to_jpg(stripped)
} # }
```
