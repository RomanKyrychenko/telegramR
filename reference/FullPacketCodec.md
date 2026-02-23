# FullPacketCodec

A codec for full TCP packets for Telegram.

## Super class

[`telegramR::PacketCodec`](https://romankyrychenko.github.io/telegramR/reference/PacketCodec.md)
-\> `FullPacketCodec`

## Public fields

- `.send_counter`:

  Counter for sent packets.

## Methods

### Public methods

- [`FullPacketCodec$new()`](#method-FullPacketCodec-new)

- [`FullPacketCodec$encode_packet()`](#method-FullPacketCodec-encode_packet)

- [`FullPacketCodec$read_packet()`](#method-FullPacketCodec-read_packet)

- [`FullPacketCodec$clone()`](#method-FullPacketCodec-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a new FullPacketCodec.

#### Usage

    FullPacketCodec$new(connection)

#### Arguments

- `connection`:

  A connection object.

------------------------------------------------------------------------

### Method `encode_packet()`

Encode a packet.

#### Usage

    FullPacketCodec$encode_packet(data)

#### Arguments

- `data`:

  A raw vector containing the packet data.

#### Returns

A raw vector representing the full packet.

------------------------------------------------------------------------

### Method `read_packet()`

Read a packet.

#### Usage

    FullPacketCodec$read_packet(reader)

#### Arguments

- `reader`:

  An object with a \`readexactly\` method.

#### Returns

A raw vector representing the packet body.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    FullPacketCodec$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
