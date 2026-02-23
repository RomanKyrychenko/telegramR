# Create SetClientDHParamsRequest from a binary reader

Reads a 128-bit `nonce`, a 128-bit `server_nonce`, and the
`encrypted_data` byte array from the provided `reader` and constructs a
`SetClientDHParamsRequest` instance.

## Usage

``` r
SetClientDHParamsRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing: - `read_large_int(bits = 128)` to read
  128-bit nonces, - `tgread_bytes()` to read Telegram-style byte arrays.

## Value

Instance of `SetClientDHParamsRequest`.
