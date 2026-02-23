# InvokeAfterMsgsRequest R6 class

Represents the TL request \`InvokeAfterMsgsRequest\`.

R6 class representing a request to invoke a nested \`query\` after a
collection of message identifiers (\`msg_ids\`). The class serializes
the list of message ids and appends the serialized nested \`query\`
bytes.

## Details

Fields: - msg_ids: numeric/integer vector (64-bit ids; numeric
placeholders are used) - query: TypeX (an object representing a TL
query). May be an R6 TL object with to_raw()/to_list().

Methods: - new(msg_ids, query): create new instance. - to_list(): return
an R list representation. - to_raw(): serialize to raw vector (bytes) in
little endian as used in TL.

to_raw() writes the constructor id (0x3dc4b4f0) in little-endian, then
the TL-vector constructor id (0x1cb5c415) and the vector length, then
each msg_id as 8-byte little-endian values, followed by nested query
bytes.

## Public fields

- `msg_ids`:

  Field.

- `query`:

  Field. Initialize an InvokeAfterMsgsRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeAfterMsgsRequest$new()`](#method-InvokeAfterMsgsRequest-new)

- [`InvokeAfterMsgsRequest$to_list()`](#method-InvokeAfterMsgsRequest-to_list)

- [`InvokeAfterMsgsRequest$to_bytes()`](#method-InvokeAfterMsgsRequest-to_bytes)

- [`InvokeAfterMsgsRequest$clone()`](#method-InvokeAfterMsgsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeAfterMsgsRequest$new(msg_ids, query)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeAfterMsgsRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeAfterMsgsRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeAfterMsgsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `msg_ids`:

  Field.

- `query`:

  Field. Initialize a new InvokeAfterMsgsRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeAfterMsgsRequest$new()`](#method-InvokeAfterMsgsRequest-new)

- [`InvokeAfterMsgsRequest$to_list()`](#method-InvokeAfterMsgsRequest-to_list)

- [`InvokeAfterMsgsRequest$to_bytes()`](#method-InvokeAfterMsgsRequest-to_bytes)

- [`InvokeAfterMsgsRequest$clone()`](#method-InvokeAfterMsgsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeAfterMsgsRequest$new(msg_ids, query)

#### Arguments

- `msg_ids`:

  A list (or vector) of message identifiers to wait for.

- `query`:

  Nested query object that responds to \`to_list\` and \`to_bytes\`.

#### Returns

A new \`InvokeAfterMsgsRequest\` instance. Convert to list
representation

Produces a plain R list for debugging or JSON serialization. Ensures
\`msg_ids\` is represented as an empty list when \`NULL\`. If \`query\`
implements \`to_list\` that representation is used.

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeAfterMsgsRequest$to_list()

#### Returns

List with keys: \`\_\`, \`msg_ids\`, and \`query\`. Serialize to raw
bytes

Serializes the request into a raw vector containing: - constructor id (4
bytes little-endian), - vector constructor marker (4 bytes) for the list
of msg_ids, - number of \`msg_ids\` (4 bytes little-endian), - each
\`msg_id\` as 8-byte little-endian integer, - followed by the nested
\`query\` bytes.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeAfterMsgsRequest$to_bytes()

#### Returns

Raw vector with serialized request bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeAfterMsgsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
