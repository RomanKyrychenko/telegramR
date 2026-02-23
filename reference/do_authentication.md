# Execute the authentication process with the Telegram servers.

Execute the authentication process with the Telegram servers.

## Usage

``` r
do_authentication(sender)
```

## Arguments

- sender:

  A connected MTProtoPlainSender-like object with a send method.

## Value

A list with elements `auth_key` and `time_offset`.
