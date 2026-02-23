# Get Metadata from File

This function attempts to extract metadata from a file using available
libraries. It supports file paths (strings), raw bytes, or file-like
objects. If the file is not seekable or if metadata extraction fails, it
returns NULL. This is a port from the Python hachoir-based
implementation, adapted to R using the exiftoolr package for metadata
extraction where possible.

## Usage

``` r
get_metadata(file)
```

## Arguments

- file:

  The file to analyze. Can be a character string (file path), a raw
  vector (bytes), or a file connection object.

## Value

A list containing metadata if extraction succeeds, otherwise NULL.
