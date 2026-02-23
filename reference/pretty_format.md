# Pretty format a TL object.

This function formats a TL object for pretty printing. It handles nested
lists, vectors, and other data types.

## Usage

``` r
pretty_format(obj, indent = NULL)
```

## Arguments

- obj:

  The object to be formatted.

- indent:

  The current indentation level (used for recursive calls).

## Value

A character string representing the formatted object.

## Examples

``` r
if (FALSE) { # \dontrun{
pretty_format(list(a = 1, b = "test", c = list(d = 2)))
pretty_format(c(1, 2, 3))
} # }
```
