# InvokeWithBusinessConnectionRequest R6 class

Represents the TL request \`InvokeWithBusinessConnectionRequest\`.

R6 class representing a request that wraps a nested \`query\` with a
business connection identifier. The \`connection_id\` is typically a
string used to identify a business connection context; \`query\` is a
nested object that must implement \`to_list()\` and \`to_bytes()\`.

## Details

Fields: - connection_id: character string - query: TypeX (an object
representing a TL query). May be an R6 TL object with
to_raw()/to_list().

Methods: - new(connection_id, query): create new instance. - to_list():
return an R list representation. - to_raw(): serialize to raw vector
(bytes) in little endian as used in TL.

to_raw() writes the constructor id (0xdd289f8e) in little-endian, then
the connection_id bytes (here via charToRaw) and then the nested query
bytes. The nested query is expected to provide a to_raw() method
returning a raw vector, or to already be a raw vector. If the query is a
character, it will be converted using charToRaw().

Writes constructor id 0xdd289f8e as little-endian (bytes: 0x8E 0x9F 0x28
0xDD), then writes connection_id as raw bytes (charToRaw), then nested
query bytes.

## Public fields

- `connection_id`:

  Field.

- `query`:

  Field. Initialize an InvokeWithBusinessConnectionRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithBusinessConnectionRequest$new()`](#method-InvokeWithBusinessConnectionRequest-new)

- [`InvokeWithBusinessConnectionRequest$to_list()`](#method-InvokeWithBusinessConnectionRequest-to_list)

- [`InvokeWithBusinessConnectionRequest$to_bytes()`](#method-InvokeWithBusinessConnectionRequest-to_bytes)

- [`InvokeWithBusinessConnectionRequest$clone()`](#method-InvokeWithBusinessConnectionRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithBusinessConnectionRequest$new(connection_id, query)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithBusinessConnectionRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithBusinessConnectionRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithBusinessConnectionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `connection_id`:

  Field.

- `query`:

  Field. Initialize a new InvokeWithBusinessConnectionRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithBusinessConnectionRequest$new()`](#method-InvokeWithBusinessConnectionRequest-new)

- [`InvokeWithBusinessConnectionRequest$to_list()`](#method-InvokeWithBusinessConnectionRequest-to_list)

- [`InvokeWithBusinessConnectionRequest$to_bytes()`](#method-InvokeWithBusinessConnectionRequest-to_bytes)

- [`InvokeWithBusinessConnectionRequest$clone()`](#method-InvokeWithBusinessConnectionRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithBusinessConnectionRequest$new(connection_id, query)

#### Arguments

- `connection_id`:

  Connection identifier (character or raw).

- `query`:

  Nested query object that responds to \`to_list\` and \`to_bytes\`.
  Convert the request to a list

  Produces a plain R list representation suitable for debugging or JSON
  serialization. If the nested \`query\` implements \`to_list()\`, that
  representation will be used.

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithBusinessConnectionRequest$to_list()

#### Returns

List with keys \`\_\`, \`connection_id\`, and \`query\`. Serialize the
request to raw bytes

The serialization order is: - constructor id (4 bytes, little-endian) -
serialized \`connection_id\` (via \`serialize_bytes()\`) - serialized
nested \`query\` bytes (via \`query\$to_bytes()\`)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithBusinessConnectionRequest$to_bytes()

#### Returns

Raw vector containing the serialized bytes of the request.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithBusinessConnectionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
