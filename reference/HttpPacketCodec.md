# HTTP Packet Codec Class

This class implements the HTTP packet codec for encoding and decoding
packets.

## Super class

[`telegramR::PacketCodec`](https://romankyrychenko.github.io/telegramR/reference/PacketCodec.md)
-\> `HttpPacketCodec`

## Public fields

- `tag`:

  A raw vector representing the tag for the codec.

- `obfuscate_tag`:

  A raw vector used for obfuscation.

## Methods

### Public methods

- [`HttpPacketCodec$new()`](#method-HttpPacketCodec-new)

- [`HttpPacketCodec$encode_packet()`](#method-HttpPacketCodec-encode_packet)

- [`HttpPacketCodec$read_packet()`](#method-HttpPacketCodec-read_packet)

- [`HttpPacketCodec$clone()`](#method-HttpPacketCodec-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize the codec with an optional connection.

#### Usage

    HttpPacketCodec$new(connection = NULL)

#### Arguments

- `connection`:

  Optional connection-like list with ip/port fields.

------------------------------------------------------------------------

### Method `encode_packet()`

Encode a packet using HTTP format.

#### Usage

    HttpPacketCodec$encode_packet(data)

#### Arguments

- `data`:

  A raw vector containing the data to encode.

#### Returns

A raw vector representing the full HTTP packet. Asynchronously read an
HTTP packet.

This method repeatedly reads lines until a line beginning with
"content-length: " is found, then reads exactly the specified number of
bytes.

------------------------------------------------------------------------

### Method `read_packet()`

#### Usage

    HttpPacketCodec$read_packet(reader)

#### Arguments

- `reader`:

  An object providing the methods
  [`readline()`](https://rdrr.io/r/base/readline.html) and
  `readexactly(n)`.

#### Returns

A future resolving to a raw vector containing the packet data.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    HttpPacketCodec$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
