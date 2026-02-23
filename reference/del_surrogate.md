# Remove surrogate pairs from text

Remove surrogate pairs from text

## Usage

``` r
del_surrogate(text)
```

## Arguments

- text:

  The input text string.

## Value

The text string with surrogate pairs removed.

## Examples

``` r
if (FALSE) { # \dontrun{
text <- "Hello \U0001F600 World" # Contains a surrogate pair
cleaned_text <- del_surrogate(text)
print(cleaned_text) # "Hello  World"
} # }
```
