# Strip text and adjust entities

Strip text and adjust entities

## Usage

``` r
strip_text(text, entities)
```

## Arguments

- text:

  The original text string.

- entities:

  A list of entity objects, each with 'offset' and 'length fields.

## Value

The stripped text with adjusted entities.

## Examples

``` r
if (FALSE) { # \dontrun{
text <- "  Hello, World!  "
entities <- list(list(offset = 2, length = 5), list(offset = 10, length = 3))
stripped_text <- strip_text(text, entities)
print(stripped_text) # "Hello, World!"
print(entities) # Adjusted entities
} # }
```
