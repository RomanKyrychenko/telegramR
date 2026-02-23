# Normalize a message ID to a consistent string key.

Handles bigz, numeric (double), and character inputs to always produce
the same decimal string representation for the same underlying value.

## Usage

``` r
msg_id_key(msg_id)
```

## Arguments

- msg_id:

  Message ID (bigz, numeric, or character)

## Value

Character string key
