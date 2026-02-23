# Check if Object is List-Like

Parse Phone Number

## Usage

``` r
parse_phone(phone)
```

## Arguments

- phone:

  The phone number to parse, as an integer or string.

## Value

A character string of the parsed phone number, or \`NULL\` if invalid.

## Details

Parses the given phone number, removing non-digit characters, and
returns it as a string if it consists only of digits. Returns \`NULL\`
if invalid.

## Examples

``` r
if (FALSE) { # \dontrun{
parse_phone(1234567890) # "1234567890"
parse_phone("+1 (234) 567-890") # "1234567890"
parse_phone("invalid") # NULL
} # }
```
