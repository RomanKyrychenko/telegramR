# Chunks

Turns the given iterable into chunks of the specified size, which is 100
by default since that's what Telegram uses the most.

## Usage

``` r
chunks(iterable, size = 100L)
```

## Arguments

- iterable:

  A vector or list to be chunked.

- size:

  An integer specifying the size of each chunk. Default is 100L.

## Value

A list of vectors, each representing a chunk of the original iterable.

## Examples

``` r
if (FALSE) { # \dontrun{
chunks(1:10, 3) # Returns list(c(1,2,3), c(4,5,6), c(7,8,9), c(10))
} # }
```
