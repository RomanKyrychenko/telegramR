# Helper function for asynchronous open connection.

Helper function for asynchronous open connection.

## Usage

``` r
async_open_connection(
  host = NULL,
  port = NULL,
  ssl = NULL,
  local_addr = NULL,
  sock = NULL,
  timeout = NULL
)
```

## Arguments

- host:

  Hostname.

- port:

  Port number.

- ssl:

  Optional SSL configuration.

- local_addr:

  Optional local address.

- sock:

  Optional socket.

- timeout:

  Optional timeout.

## Value

A promise resolving with a list containing reader and writer.
