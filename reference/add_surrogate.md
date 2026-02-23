# Add surrogate pairs to text

Add surrogate pairs to text

## Usage

``` r
add_surrogate(text)
```

## Arguments

- text:

  The input text string.

## Value

The text string with surrogate pairs added.

## Examples

``` r
if (FALSE) { # \dontrun{
text <- "Hello \U0001F600 World" # Contains a surrogate pair
surrogate_text <- add_surrogate(text)
print(surrogate_text) # "Hello 😀 World"
} # }
```
