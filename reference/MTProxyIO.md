# MTProxyIO

Handles MTProxy header initialization and I/O encryption/decryption.

## Public fields

- `header`:

  The MTProxy header.

- `encryptor`:

  The AESModeCTR encryptor.

- `decryptor`:

  The AESModeCTR decryptor.

- `reader`:

  The reader object.

- `writer`:

  The writer object.

## Methods

### Public methods

- [`MTProxyIO$new()`](#method-MTProxyIO-new)

- [`MTProxyIO$readexactly()`](#method-MTProxyIO-readexactly)

- [`MTProxyIO$write()`](#method-MTProxyIO-write)

- [`MTProxyIO$clone()`](#method-MTProxyIO-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize MTProxyIO.

#### Usage

    MTProxyIO$new(connection)

#### Arguments

- `connection`:

  A connection object with fields: reader, writer, secret, dc_id, and
  packet_codec.

------------------------------------------------------------------------

### Method `readexactly()`

Asynchronously read exactly n bytes and decrypt them.

#### Usage

    MTProxyIO$readexactly(n)

#### Arguments

- `n`:

  Number of bytes to read.

#### Returns

A raw vector with decrypted data.

------------------------------------------------------------------------

### Method [`write()`](https://rdrr.io/r/base/write.html)

Encrypt and write data.

#### Usage

    MTProxyIO$write(data)

#### Arguments

- `data`:

  A raw vector to write.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MTProxyIO$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
