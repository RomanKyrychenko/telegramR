# Convert an RPC error to an R condition

Convert an RPC error to an R condition

## Usage

``` r
rpc_message_to_error(rpc_error, request)
```

## Arguments

- rpc_error:

  A list or R6 object with error_code and error_message fields

- request:

  The request that caused the error

## Value

A condition object
