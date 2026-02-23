# InvokeWithTakeoutRequest R6 class

Represents the TL request \`InvokeWithTakeoutRequest\`.

R6 class representing a request that wraps a nested \`query\` with a
takeout identifier. The \`takeout_id\` is typically an integer64
identifying a user's takeout/export session; \`query\` is a nested
object that must implement \`to_list()\` and \`to_bytes()\`.

## Value

An R6 object of class `InvokeWithTakeoutRequest`.

## Details

Fields: - takeout_id: numeric/integer (64-bit placeholder) - query:
TypeX (an object representing a TL query). May be an R6 TL object with
to_raw()/to_list().

Methods: - new(takeout_id, query): create new instance. - to_list():
return an R list representation. - to_raw(): serialize to raw vector
(bytes) in little endian as used in TL.

to_raw() writes takeout_id as an 8-byte little-endian value using
writeBin(as.numeric(...), size=8). For exact two's-complement 64-bit
preservation, replace with a dedicated 64-bit serializer.

## Public fields

- `takeout_id`:

  Field.

- `query`:

  Field. Initialize an InvokeWithTakeoutRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithTakeoutRequest$new()`](#method-InvokeWithTakeoutRequest-new)

- [`InvokeWithTakeoutRequest$to_list()`](#method-InvokeWithTakeoutRequest-to_list)

- [`InvokeWithTakeoutRequest$to_bytes()`](#method-InvokeWithTakeoutRequest-to_bytes)

- [`InvokeWithTakeoutRequest$clone()`](#method-InvokeWithTakeoutRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithTakeoutRequest$new(takeout_id, query)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithTakeoutRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithTakeoutRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithTakeoutRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `takeout_id`:

  Field.

- `query`:

  Field. Initialize a new InvokeWithTakeoutRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithTakeoutRequest$new()`](#method-InvokeWithTakeoutRequest-new)

- [`InvokeWithTakeoutRequest$to_list()`](#method-InvokeWithTakeoutRequest-to_list)

- [`InvokeWithTakeoutRequest$to_bytes()`](#method-InvokeWithTakeoutRequest-to_bytes)

- [`InvokeWithTakeoutRequest$clone()`](#method-InvokeWithTakeoutRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithTakeoutRequest$new(takeout_id, query)

#### Arguments

- `takeout_id`:

  Integer64 identifier of the takeout session.

- `query`:

  Nested query object that responds to \`to_list\` and \`to_bytes\`.
  Convert to list representation

  Produces a plain R list suitable for debugging or JSON serialization.
  If the nested \`query\` implements \`to_list()\`, that representation
  will be used.

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithTakeoutRequest$to_list()

#### Returns

List with keys: \`\_\`, \`takeout_id\`, and \`query\`. Serialize the
request to raw bytes

Serialization order: - constructor id (4 bytes, little-endian) -
\`takeout_id\` as 8-byte little-endian integer - serialized nested
\`query\` bytes (via \`query\$to_bytes()\`)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithTakeoutRequest$to_bytes()

#### Returns

Raw vector containing the serialized bytes of the request.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithTakeoutRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
