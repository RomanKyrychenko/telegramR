# Generate key data from nonce

Generate key data from nonce

## Usage

``` r
generate_key_data_from_nonce(server_nonce, new_nonce)
```

## Arguments

- server_nonce:

  A raw vector representing the server nonce (16 bytes).

- new_nonce:

  A raw vector representing the new nonce (32 bytes).

## Value

A list containing 'key' and 'iv' as raw vectors.

## Examples

``` r
if (FALSE) { # \dontrun{
server_nonce <- as.raw(sample(0:255, 16, replace = TRUE))
new_nonce <- as.raw(sample(0:255, 32, replace = TRUE))
key_data <- generate_key_data_from_nonce(server_nonce, new_nonce)
str(key_data)
} # }
```
