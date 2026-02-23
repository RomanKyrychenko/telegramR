# Encrypts data using the specified RSA key fingerprint.

Encrypts data using the specified RSA key fingerprint.

## Usage

``` r
encrypt(fingerprint, data, use_old = FALSE)
```

## Arguments

- fingerprint:

  The fingerprint of the RSA key.

- data:

  The data to encrypt as a raw vector (or coercible).

- use_old:

  Logical indicating if old keys should be used.

## Value

The encrypted data as a raw vector, or NULL if no matching key is found.
