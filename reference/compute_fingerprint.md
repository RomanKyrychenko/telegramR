# Computes the fingerprint of an RSA key.

Computes the fingerprint of an RSA key.

## Usage

``` r
compute_fingerprint(key)
```

## Arguments

- key:

  The RSA key as a list with \`n\` and \`e\` components, a PEM string,
  or an openssl pubkey.

## Value

The 8-byte fingerprint as a positive numeric.
