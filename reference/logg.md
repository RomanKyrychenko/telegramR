# Logging setup A simple logging function that prints formatted messages to the console.

Logging setup A simple logging function that prints formatted messages
to the console.

## Usage

``` r
logg(...)
```

## Arguments

- ...:

  Arguments passed to sprintf for formatting the log message.

## Value

None. Prints the formatted message to the console.

## Examples

``` r
if (FALSE) { # \dontrun{
logg("This is a log message with a number: %d", 42)
} # }
```
