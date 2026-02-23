# InvokeWithLayerRequest R6 class

Represents the TL request \`InvokeWithLayerRequest\`.

R6 class representing a request that wraps a nested \`query\` and
specifies a protocol \`layer\`. The \`layer\` is an integer representing
the API layer to invoke the nested \`query\` under. The nested \`query\`
must implement \`to_list()\` and \`to_bytes()\`.

## Details

Fields: - layer: integer (32-bit) - query: TypeX (an object representing
a TL query). May be an R6 TL object with to_raw()/to_list().

Methods: - new(layer, query): create new instance. - to_list(): return
an R list representation. - to_raw(): serialize to raw vector (bytes) in
little endian as used in TL.

to_raw() writes the constructor id (0xda9b0d0d) in little-endian, then a
4-byte integer for layer, then the nested query bytes. The nested query
is expected to provide a to_raw() method returning a raw vector, or to
already be a raw vector. If the query is a character, it will be
converted using charToRaw().

## Public fields

- `layer`:

  Field.

- `query`:

  Field. Initialize an InvokeWithLayerRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithLayerRequest$new()`](#method-InvokeWithLayerRequest-new)

- [`InvokeWithLayerRequest$to_list()`](#method-InvokeWithLayerRequest-to_list)

- [`InvokeWithLayerRequest$to_bytes()`](#method-InvokeWithLayerRequest-to_bytes)

- [`InvokeWithLayerRequest$clone()`](#method-InvokeWithLayerRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithLayerRequest$new(layer, query)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithLayerRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithLayerRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithLayerRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `layer`:

  Field.

- `query`:

  Field. Initialize a new InvokeWithLayerRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithLayerRequest$new()`](#method-InvokeWithLayerRequest-new)

- [`InvokeWithLayerRequest$to_list()`](#method-InvokeWithLayerRequest-to_list)

- [`InvokeWithLayerRequest$to_bytes()`](#method-InvokeWithLayerRequest-to_bytes)

- [`InvokeWithLayerRequest$clone()`](#method-InvokeWithLayerRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithLayerRequest$new(layer, query)

#### Arguments

- `layer`:

  Integer API layer to use for the nested query.

- `query`:

  Nested query object that responds to \`to_list\` and \`to_bytes\`.
  Convert to list representation

  Produces a plain R list suitable for debugging or JSON serialization.
  If the nested \`query\` implements \`to_list\`, that representation
  will be used.

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithLayerRequest$to_list()

#### Returns

List with keys: \`\_\`, \`layer\`, and \`query\`. Serialize to raw bytes

Serialization order: - constructor id (4 bytes, little-endian) -
\`layer\` as 4-byte little-endian integer - serialized nested \`query\`
bytes (via \`query\$to_bytes()\`)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithLayerRequest$to_bytes()

#### Returns

Raw vector containing the serialized bytes of the request.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithLayerRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
