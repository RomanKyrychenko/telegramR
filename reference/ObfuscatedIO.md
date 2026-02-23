# ObfuscatedIO

Handles obfuscated I/O operations for Telegram obfuscation.

## Public fields

- `header`:

  The obfuscation header as a raw vector.

- `.encrypt`:

  The AESModeCTR encryptor object.

- `.decrypt`:

  The AESModeCTR decryptor object.

- `.reader`:

  The reader connection object.

- `.writer`:

  The writer connection object.

## Methods

### Public methods

- [`ObfuscatedIO$new()`](#method-ObfuscatedIO-new)

- [`ObfuscatedIO$readexactly()`](#method-ObfuscatedIO-readexactly)

- [`ObfuscatedIO$write()`](#method-ObfuscatedIO-write)

- [`ObfuscatedIO$init_header()`](#method-ObfuscatedIO-init_header)

- [`ObfuscatedIO$clone()`](#method-ObfuscatedIO-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize ObfuscatedIO.

#### Usage

    ObfuscatedIO$new(connection)

#### Arguments

- `connection`:

  A connection object with \`.reader\`, \`.writer\`, and
  \`packet_codec\` fields.

------------------------------------------------------------------------

### Method `readexactly()`

Reads exactly n bytes and decrypts them.

#### Usage

    ObfuscatedIO$readexactly(n)

#### Arguments

- `n`:

  Number of bytes to read.

#### Returns

A raw vector of decrypted bytes.

------------------------------------------------------------------------

### Method [`write()`](https://rdrr.io/r/base/write.html)

Encrypts and writes data.

#### Usage

    ObfuscatedIO$write(data)

#### Arguments

- `data`:

  A raw vector of data.

------------------------------------------------------------------------

### Method `init_header()`

Initializes the header, encryption, and decryption objects.

#### Usage

    ObfuscatedIO$init_header(packet_codec)

#### Arguments

- `packet_codec`:

  A packet codec object with an \`obfuscate_tag\` field.

#### Returns

A list containing the header, encryptor, and decryptor.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ObfuscatedIO$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
