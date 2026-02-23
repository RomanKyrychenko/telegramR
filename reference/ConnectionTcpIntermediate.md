# ConnectionTcpIntermediate

Intermediate mode between ConnectionTcpFull and ConnectionTcpAbridged.

## Details

Always sends 4 extra bytes for the packet length.

## Super class

[`telegramR::Connection`](https://romankyrychenko.github.io/telegramR/reference/Connection.md)
-\> `ConnectionTcpIntermediate`

## Methods

### Public methods

- [`ConnectionTcpIntermediate$new()`](#method-ConnectionTcpIntermediate-new)

- [`ConnectionTcpIntermediate$clone()`](#method-ConnectionTcpIntermediate-clone)

Inherited methods

- [`telegramR::Connection$connect()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-connect)
- [`telegramR::Connection$disconnect()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-disconnect)
- [`telegramR::Connection$is_connected()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-is_connected)
- [`telegramR::Connection$recv()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-recv)
- [`telegramR::Connection$send()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-send)
- [`telegramR::Connection$to_string()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-to_string)

------------------------------------------------------------------------

### Method `new()`

Initializes the intermediate TCP connection.

#### Usage

    ConnectionTcpIntermediate$new(...)

#### Arguments

- `...`:

  Additional parameters passed to the parent constructor.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ConnectionTcpIntermediate$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
