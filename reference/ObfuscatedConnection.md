# ObfuscatedConnection Class

Base class for obfuscated connections (e.g., obfuscated2, mtproto
proxy).

## Super class

[`telegramR::Connection`](https://romankyrychenko.github.io/telegramR/reference/Connection.md)
-\> `ObfuscatedConnection`

## Public fields

- `obfuscated_io`:

  The obfuscation class to use.

## Methods

### Public methods

- [`ObfuscatedConnection$clone()`](#method-ObfuscatedConnection-clone)

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

    ObfuscatedConnection$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
