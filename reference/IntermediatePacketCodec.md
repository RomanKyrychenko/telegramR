# IntermediatePacketCodec

A codec for intermediate TCP packets.

## Value

A raw vector representing the packet data.

## Details

Encodes packets by prepending a 4-byte little-endian length prefix.

## Super class

[`telegramR::PacketCodec`](https://romankyrychenko.github.io/telegramR/reference/PacketCodec.md)
-\> `IntermediatePacketCodec`

## Public fields

- `tag`:

  A raw vector representing the tag for the codec.

- `obfuscate_tag`:

  A raw vector used for obfuscation.

## Methods

### Public methods

- [`IntermediatePacketCodec$new()`](#method-IntermediatePacketCodec-new)

- [`IntermediatePacketCodec$encode_packet()`](#method-IntermediatePacketCodec-encode_packet)

- [`IntermediatePacketCodec$read_packet()`](#method-IntermediatePacketCodec-read_packet)

- [`IntermediatePacketCodec$clone()`](#method-IntermediatePacketCodec-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize codec with optional connection.

#### Usage

    IntermediatePacketCodec$new(connection = NULL)

#### Arguments

- `connection`:

  Optional connection object.

------------------------------------------------------------------------

### Method `encode_packet()`

Encodes the packet.

#### Usage

    IntermediatePacketCodec$encode_packet(data)

#### Arguments

- `data`:

  A raw vector containing the packet data.

#### Returns

A raw vector that starts with a 4-byte little-endian length prefix
followed by the data.

------------------------------------------------------------------------

### Method `read_packet()`

Reads and decodes a packet from a reader.

#### Usage

    IntermediatePacketCodec$read_packet(reader)

#### Arguments

- `reader`:

  An object with a \`readexactly\` method.

#### Returns

A promise resolving to packet data.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    IntermediatePacketCodec$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
