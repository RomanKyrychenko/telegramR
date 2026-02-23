# ConnectionHttp

Telegram API type ConnectionHttp

## Details

HTTP Connection Class

## Super class

[`telegramR::Connection`](https://romankyrychenko.github.io/telegramR/reference/Connection.md)
-\> `ConnectionHttp`

## Methods

### Public methods

- [`ConnectionHttp$connect()`](#method-ConnectionHttp-connect)

- [`ConnectionHttp$clone()`](#method-ConnectionHttp-clone)

Inherited methods

- [`telegramR::Connection$disconnect()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-disconnect)
- [`telegramR::Connection$initialize()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-initialize)
- [`telegramR::Connection$is_connected()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-is_connected)
- [`telegramR::Connection$recv()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-recv)
- [`telegramR::Connection$send()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-send)
- [`telegramR::Connection$to_string()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-to_string)

------------------------------------------------------------------------

### Method `connect()`

This method connects to the server using SSL if the port equals
`SSL_PORT`.

#### Usage

    ConnectionHttp$connect(timeout = NULL, ssl = NULL)

#### Arguments

- `timeout`:

  Optional timeout for the connection.

- `ssl`:

  Optional SSL parameter (ignored in favor of port-based selection).

#### Returns

A future resolving when the connection is established.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ConnectionHttp$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
