# AbridgedPacketCodec

An R6 class that implements the Abridged Packet Codec for encoding and
decoding packets.

## Super class

[`telegramR::PacketCodec`](https://romankyrychenko.github.io/telegramR/reference/PacketCodec.md)
-\> `AbridgedPacketCodec`

## Public fields

- `tag`:

  A raw byte representing the tag for the codec.

- `obfuscate_tag`:

  A raw vector used for obfuscation.

## Methods

### Public methods

- [`AbridgedPacketCodec$encode_packet()`](#method-AbridgedPacketCodec-encode_packet)

- [`AbridgedPacketCodec$read_packet()`](#method-AbridgedPacketCodec-read_packet)

- [`AbridgedPacketCodec$clone()`](#method-AbridgedPacketCodec-clone)

Inherited methods

- [`telegramR::PacketCodec$initialize()`](https://romankyrychenko.github.io/telegramR/reference/PacketCodec.html#method-initialize)

------------------------------------------------------------------------

### Method `encode_packet()`

Encodes a packet by adding a length prefix.

#### Usage

    AbridgedPacketCodec$encode_packet(data)

#### Arguments

- `data`:

  A raw vector representing the data to be encoded.

#### Returns

A raw vector containing the encoded packet with the length prefix.

------------------------------------------------------------------------

### Method `read_packet()`

Reads and decodes a packet from a reader.

#### Usage

    AbridgedPacketCodec$read_packet(reader)

#### Arguments

- `reader`:

  An object with a \`readexactly\` method to read a specific number of
  bytes.

#### Returns

A promise that resolves to the decoded packet.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AbridgedPacketCodec$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
