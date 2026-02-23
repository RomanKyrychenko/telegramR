# Calculate Byte Count for Photo Size

This function calculates the byte count for different types of photo
sizes in the Telegram API. It handles various photo size types and
returns the appropriate byte count based on the type and its properties.

## Usage

``` r
photo_size_byte_count(size)
```

## Arguments

- size:

  An object representing a photo size, which can be of types such as
  PhotoSize, PhotoStrippedSize, PhotoCachedSize, PhotoSizeEmpty, or
  PhotoSizeProgressive.

## Value

The byte count as an integer, or NULL if the type is unrecognized.

## Examples

``` r
if (FALSE) { # \dontrun{
# Assuming types are defined elsewhere, e.g., PhotoSize
size <- PhotoSize(size = 1024)
photo_size_byte_count(size) # Returns 1024
} # }
```
