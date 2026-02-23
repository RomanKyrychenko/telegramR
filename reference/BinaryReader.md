# BinaryReader

Telegram API type BinaryReader

## Details

BinaryReader Class

Provides methods to read various data types and handle stream positions.

## Methods

### Public methods

- [`BinaryReader$new()`](#method-BinaryReader-new)

- [`BinaryReader$read_byte()`](#method-BinaryReader-read_byte)

- [`BinaryReader$read_int()`](#method-BinaryReader-read_int)

- [`BinaryReader$read_long()`](#method-BinaryReader-read_long)

- [`BinaryReader$read_float()`](#method-BinaryReader-read_float)

- [`BinaryReader$read_double()`](#method-BinaryReader-read_double)

- [`BinaryReader$read()`](#method-BinaryReader-read)

- [`BinaryReader$get_bytes()`](#method-BinaryReader-get_bytes)

- [`BinaryReader$close()`](#method-BinaryReader-close)

- [`BinaryReader$tell_position()`](#method-BinaryReader-tell_position)

- [`BinaryReader$set_position()`](#method-BinaryReader-set_position)

- [`BinaryReader$seek()`](#method-BinaryReader-seek)

- [`BinaryReader$bytes_to_int()`](#method-BinaryReader-bytes_to_int)

- [`BinaryReader$read_large_int()`](#method-BinaryReader-read_large_int)

- [`BinaryReader$tgread_bytes()`](#method-BinaryReader-tgread_bytes)

- [`BinaryReader$tgreadbytes()`](#method-BinaryReader-tgreadbytes)

- [`BinaryReader$tgread_string()`](#method-BinaryReader-tgread_string)

- [`BinaryReader$tgread_date()`](#method-BinaryReader-tgread_date)

- [`BinaryReader$tgread_object()`](#method-BinaryReader-tgread_object)

- [`BinaryReader$clone()`](#method-BinaryReader-clone)

------------------------------------------------------------------------

### Method `new()`

Initializes the BinaryReader with the given binary data.

#### Usage

    BinaryReader$new(data)

#### Arguments

- `data`:

  A raw vector representing the binary data to read.

------------------------------------------------------------------------

### Method `read_byte()`

Reads a single byte value.

#### Usage

    BinaryReader$read_byte()

#### Returns

A single byte as an integer.

------------------------------------------------------------------------

### Method `read_int()`

Reads a 4-byte integer value.

#### Usage

    BinaryReader$read_int(signed = TRUE)

#### Arguments

- `signed`:

  A logical indicating whether the integer is signed.

#### Returns

An integer value.

------------------------------------------------------------------------

### Method `read_long()`

Reads an 8-byte long integer value.

#### Usage

    BinaryReader$read_long(signed = TRUE)

#### Arguments

- `signed`:

  A logical indicating whether the integer is signed.

#### Returns

A long integer value.

------------------------------------------------------------------------

### Method `read_float()`

Reads a 4-byte floating-point value.

#### Usage

    BinaryReader$read_float()

#### Returns

A numeric value.

------------------------------------------------------------------------

### Method `read_double()`

Reads an 8-byte floating-point value.

#### Usage

    BinaryReader$read_double()

#### Returns

A numeric value.

------------------------------------------------------------------------

### Method `read()`

Reads a specified number of bytes.

#### Usage

    BinaryReader$read(length = -1)

#### Arguments

- `length`:

  An integer specifying the number of bytes to read.

#### Returns

A raw vector of the read bytes.

------------------------------------------------------------------------

### Method `get_bytes()`

Gets the byte array representing the current buffer as a whole.

#### Usage

    BinaryReader$get_bytes()

#### Returns

A raw vector of the entire buffer.

------------------------------------------------------------------------

### Method [`close()`](https://rdrr.io/r/base/connections.html)

Closes the reader, freeing the raw connection.

#### Usage

    BinaryReader$close()

------------------------------------------------------------------------

### Method `tell_position()`

Tells the current position in the stream.

#### Usage

    BinaryReader$tell_position()

#### Returns

An integer representing the current position.

------------------------------------------------------------------------

### Method `set_position()`

Sets the current position in the stream.

#### Usage

    BinaryReader$set_position(position)

#### Arguments

- `position`:

  An integer specifying the position to set.

------------------------------------------------------------------------

### Method [`seek()`](https://rdrr.io/r/base/seek.html)

Seeks the stream position by a given offset.

#### Usage

    BinaryReader$seek(offset)

#### Arguments

- `offset`:

  An integer specifying the offset to seek.

------------------------------------------------------------------------

### Method `bytes_to_int()`

Converts a byte vector to an integer.

#### Usage

    BinaryReader$bytes_to_int(bytes, signed = TRUE)

#### Arguments

- `bytes`:

  A raw vector representing the bytes.

- `signed`:

  A logical indicating whether the integer is signed.

#### Returns

An integer value.

------------------------------------------------------------------------

### Method `read_large_int()`

Reads a large integer (128, 256, etc bits).

#### Usage

    BinaryReader$read_large_int(bits)

#### Arguments

- `bits`:

  Number of bits to read.

#### Returns

A bigz value.

------------------------------------------------------------------------

### Method `tgread_bytes()`

Reads a Telegram-encoded byte array.

#### Usage

    BinaryReader$tgread_bytes()

#### Returns

A raw vector.

------------------------------------------------------------------------

### Method `tgreadbytes()`

Alias for tgread_bytes (some generated code uses this name).

#### Usage

    BinaryReader$tgreadbytes()

#### Returns

A raw vector.

------------------------------------------------------------------------

### Method `tgread_string()`

Reads a Telegram-encoded string.

#### Usage

    BinaryReader$tgread_string()

#### Returns

A character string.

------------------------------------------------------------------------

### Method `tgread_date()`

Reads a 32-bit Unix timestamp and returns it as a POSIXct datetime.

#### Usage

    BinaryReader$tgread_date()

#### Returns

A POSIXct datetime or NULL if the timestamp is 0.

------------------------------------------------------------------------

### Method `tgread_object()`

Reads a TL object.

#### Usage

    BinaryReader$tgread_object()

#### Returns

A TL object or raw bytes if type unknown.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BinaryReader$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
