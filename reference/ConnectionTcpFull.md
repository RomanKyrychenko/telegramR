# ConnectionTcpFull

Default Telegram mode. Sends 12 additional bytes and calculates the CRC
for each packet.

## Super class

[`telegramR::Connection`](https://romankyrychenko.github.io/telegramR/reference/Connection.md)
-\> `ConnectionTcpFull`

## Methods

### Public methods

- [`ConnectionTcpFull$new()`](#method-ConnectionTcpFull-new)

- [`ConnectionTcpFull$clone()`](#method-ConnectionTcpFull-clone)

Inherited methods

- [`telegramR::Connection$connect()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-connect)
- [`telegramR::Connection$disconnect()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-disconnect)
- [`telegramR::Connection$is_connected()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-is_connected)
- [`telegramR::Connection$recv()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-recv)
- [`telegramR::Connection$send()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-send)
- [`telegramR::Connection$to_string()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-to_string)

------------------------------------------------------------------------

### Method `new()`

Initialize the TCP full connection.

#### Usage

    ConnectionTcpFull$new(...)

#### Arguments

- `...`:

  Additional parameters.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ConnectionTcpFull$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
