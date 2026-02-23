# Pack data into binary format

Mimics Python's struct.pack for common types used in Telegram.

## Usage

``` r
pack(format, ...)
```

## Arguments

- format:

  A character string specifying the format (e.g., "i", "I", "q", "Q",
  "f", "d").

- ...:

  Values to be packed.

## Value

A raw vector of the packed data with class 'raw_bytes'.
