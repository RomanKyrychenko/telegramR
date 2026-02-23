# PacketCodec Class

Abstract base class for packet codecs.

## Public fields

- `tag`:

  Optional initial bytes to send upon connection.

## Methods

### Public methods

- [`PacketCodec$new()`](#method-PacketCodec-new)

- [`PacketCodec$encode_packet()`](#method-PacketCodec-encode_packet)

- [`PacketCodec$read_packet()`](#method-PacketCodec-read_packet)

- [`PacketCodec$clone()`](#method-PacketCodec-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a PacketCodec instance.

#### Usage

    PacketCodec$new(connection)

#### Arguments

- `connection`:

  The associated Connection object.

------------------------------------------------------------------------

### Method `encode_packet()`

Encode a packet.

#### Usage

    PacketCodec$encode_packet(data)

#### Arguments

- `data`:

  The data to encode.

#### Returns

Encoded bytes.

------------------------------------------------------------------------

### Method `read_packet()`

Read a packet.

#### Usage

    PacketCodec$read_packet(reader)

#### Arguments

- `reader`:

  An object with a readexactly method.

#### Returns

A promise resolving with the packet.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PacketCodec$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
