# ConnectionTcpAbridged

An R6 class that represents a TCP connection using the Abridged Packet
Codec.

## Details

Connection Module

This module provides connection handling for Telegram API
communications. It relies on the future package for asynchronous
operations and R6 for object-oriented programming.

## Super class

[`telegramR::Connection`](https://romankyrychenko.github.io/telegramR/reference/Connection.md)
-\> `ConnectionTcpAbridged`

## Methods

### Public methods

- [`ConnectionTcpAbridged$new()`](#method-ConnectionTcpAbridged-new)

- [`ConnectionTcpAbridged$clone()`](#method-ConnectionTcpAbridged-clone)

Inherited methods

- [`telegramR::Connection$connect()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-connect)
- [`telegramR::Connection$disconnect()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-disconnect)
- [`telegramR::Connection$is_connected()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-is_connected)
- [`telegramR::Connection$recv()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-recv)
- [`telegramR::Connection$send()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-send)
- [`telegramR::Connection$to_string()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-to_string)

------------------------------------------------------------------------

### Method `new()`

Initializes the connection.

#### Usage

    ConnectionTcpAbridged$new(...)

#### Arguments

- `...`:

  Additional parameters passed to the parent class.

#### Returns

None.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ConnectionTcpAbridged$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
