# ConnectionTcpObfuscated

Telegram obfuscated2 connection that encrypts every message with a
randomly generated key using AES-CTR.

## Super classes

[`telegramR::Connection`](https://romankyrychenko.github.io/telegramR/reference/Connection.md)
-\>
[`telegramR::ObfuscatedConnection`](https://romankyrychenko.github.io/telegramR/reference/ObfuscatedConnection.md)
-\> `ConnectionTcpObfuscated`

## Public fields

- `obfuscated_io`:

  ObfuscatedIO class for handling obfuscated I/O operations.

- `packet_codec`:

  Packet codec set to AbridgedPacketCodec.

## Methods

### Public methods

- [`ConnectionTcpObfuscated$clone()`](#method-ConnectionTcpObfuscated-clone)

Inherited methods

- [`telegramR::Connection$connect()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-connect)
- [`telegramR::Connection$disconnect()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-disconnect)
- [`telegramR::Connection$initialize()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-initialize)
- [`telegramR::Connection$is_connected()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-is_connected)
- [`telegramR::Connection$recv()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-recv)
- [`telegramR::Connection$send()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-send)
- [`telegramR::Connection$to_string()`](https://romankyrychenko.github.io/telegramR/reference/Connection.html#method-to_string)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ConnectionTcpObfuscated$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
