# Parse Username

Parses the given username or channel access hash from a string,
username, or URL. Returns a list consisting of the stripped, lowercase
username and a logical indicating whether it is a joinchat/hash (in
which case it is not lowercased). Returns \`list(NULL, FALSE)\` if the
username or link is not valid.

## Usage

``` r
parse_username(username)
```

## Arguments

- username:

  The username string to parse.

## Value

A list with two elements: the parsed username (or \`NULL\`) and a
logical for invite status.

## Examples

``` r
if (FALSE) { # \dontrun{
parse_username("@username") # list("username", FALSE)
parse_username("https://t.me/joinchat/abc123") # list("abc123", TRUE)
parse_username("invalid") # list(NULL, FALSE)
} # }
```
