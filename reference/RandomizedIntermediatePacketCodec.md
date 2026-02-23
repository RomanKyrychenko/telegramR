# RandomizedIntermediatePacketCodec

A codec that adds random padding to align packets to 4 bytes.

## Value

A raw vector representing the packet data.

## Details

Encodes packets by prepending a 4-byte little-endian length prefix.

## Super classes

[`telegramR::PacketCodec`](https://romankyrychenko.github.io/telegramR/reference/PacketCodec.md)
-\>
[`telegramR::IntermediatePacketCodec`](https://romankyrychenko.github.io/telegramR/reference/IntermediatePacketCodec.md)
-\> `RandomizedIntermediatePacketCodec`

## Public fields

- `tag`:

  A raw vector representing the tag for the codec.

- `obfuscate_tag`:

  A raw vector used for obfuscation.

## Methods

### Public methods

- [`RandomizedIntermediatePacketCodec$encode_packet()`](#method-RandomizedIntermediatePacketCodec-encode_packet)

- [`RandomizedIntermediatePacketCodec$read_packet()`](#method-RandomizedIntermediatePacketCodec-read_packet)

- [`RandomizedIntermediatePacketCodec$clone()`](#method-RandomizedIntermediatePacketCodec-clone)

Inherited methods

- [`telegramR::IntermediatePacketCodec$initialize()`](https://romankyrychenko.github.io/telegramR/reference/IntermediatePacketCodec.html#method-initialize)

------------------------------------------------------------------------

### Method `encode_packet()`

Encodes the packet with random padding.

#### Usage

    RandomizedIntermediatePacketCodec$encode_packet(data)

#### Arguments

- `data`:

  A raw vector containing the packet data.

#### Returns

A raw vector with a 4-byte length prefix and random padding.

------------------------------------------------------------------------

### Method `read_packet()`

Reads a packet and removes any trailing random padding.

#### Usage

    RandomizedIntermediatePacketCodec$read_packet(reader)

#### Arguments

- `reader`:

  An object with a \`readexactly\` method.

#### Returns

A promise resolving to packet data without random padding.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RandomizedIntermediatePacketCodec$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
