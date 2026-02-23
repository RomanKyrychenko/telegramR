# Check if File is an Image

Returns \`TRUE\` if the file extension looks like an image file to
Telegram. If the extension does not match common image formats (png,
jpg, jpeg), it checks if resolving the file as a bot file ID returns a
Photo object.

## Usage

``` r
is_image(file)
```

## Arguments

- file:

  The file path or object to check.

## Value

A logical value indicating whether the file is an image.
