# Check if index is within a surrogate pair

Check if index is within a surrogate pair

## Usage

``` r
within_surrogate(text, index, text_length = NULL)
```

## Arguments

- text:

  The input text string.

- index:

  The index to check (1-based).

- text_length:

  Optional length of the text; if NULL, computed from text.

## Value

Logical indicating if the index is within a surrogate pair.

## Examples

``` r
if (FALSE) { # \dontrun{
text <- "\U0001F400"
within_surrogate(text, 2)
} # }
```
