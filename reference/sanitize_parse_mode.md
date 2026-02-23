# Sanitize Parse Mode

Converts the given parse mode into an object with `parse` and `unparse`
callable properties.

## Usage

``` r
sanitize_parse_mode(mode)
```

## Arguments

- mode:

  The parse mode to sanitize. Can be NULL, an object with parse and
  unparse methods, a callable function, or a string ('md', 'markdown',
  'htm', 'html').

## Value

An object with parse and unparse methods, or NULL if mode is NULL.

## Examples

``` r
if (FALSE) { # \dontrun{
# Assuming markdown and html are defined elsewhere
mode <- sanitize_parse_mode("markdown")
parsed <- mode$parse("**bold**")
} # }
```
