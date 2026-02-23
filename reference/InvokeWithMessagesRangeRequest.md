# InvokeWithMessagesRangeRequest R6 class

Represents the TL request \`InvokeWithMessagesRangeRequest\`.

R6 class representing a request that wraps a nested \`query\` and
applies it to a provided \`range\` of messages. The \`range\` is
expected to be an object that implements \`to_list()\` and
\`to_bytes()\` (e.g. a message range descriptor), and \`query\` is a
nested Telegram-like object that also implements \`to_list()\` and
\`to_bytes()\`.

## Details

Fields: - range: TypeMessageRange (an object representing a message
range). May be an R6 TL object with to_raw()/to_list(). - query: TypeX
(an object representing a TL query). May be an R6 TL object with
to_raw()/to_list().

Methods: - new(range, query): create new instance. - to_list(): return
an R list representation. - to_raw(): serialize to raw vector (bytes) in
little endian as used in TL.

to_raw() writes the constructor id (0x365275f2) in little-endian, then
the serialized bytes for the range, then the serialized bytes for the
nested query.

## Public fields

- `range`:

  Field.

- `query`:

  Field. Initialize an InvokeWithMessagesRangeRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithMessagesRangeRequest$new()`](#method-InvokeWithMessagesRangeRequest-new)

- [`InvokeWithMessagesRangeRequest$to_list()`](#method-InvokeWithMessagesRangeRequest-to_list)

- [`InvokeWithMessagesRangeRequest$to_bytes()`](#method-InvokeWithMessagesRangeRequest-to_bytes)

- [`InvokeWithMessagesRangeRequest$clone()`](#method-InvokeWithMessagesRangeRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithMessagesRangeRequest$new(range, query)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithMessagesRangeRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithMessagesRangeRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithMessagesRangeRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `range`:

  Field.

- `query`:

  Field. Initialize a new InvokeWithMessagesRangeRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithMessagesRangeRequest$new()`](#method-InvokeWithMessagesRangeRequest-new)

- [`InvokeWithMessagesRangeRequest$to_list()`](#method-InvokeWithMessagesRangeRequest-to_list)

- [`InvokeWithMessagesRangeRequest$to_bytes()`](#method-InvokeWithMessagesRangeRequest-to_bytes)

- [`InvokeWithMessagesRangeRequest$clone()`](#method-InvokeWithMessagesRangeRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithMessagesRangeRequest$new(range, query)

#### Arguments

- `range`:

  Object describing the messages range (expected to implement
  \`to_list\` and \`to_bytes\`).

- `query`:

  Nested query object that responds to \`to_list\` and \`to_bytes\`.
  Convert to list representation

  Produces a plain R list suitable for debugging or JSON serialization.
  If \`range\` or \`query\` implement \`to_list\`, their representations
  will be used.

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithMessagesRangeRequest$to_list()

#### Returns

List with keys: \`\_\`, \`range\`, and \`query\`. Serialize to raw bytes

Produces a raw vector containing: - constructor id (4 bytes,
little-endian) - serialized \`range\` bytes (via
\`range\$to_bytes()\`) - serialized nested \`query\` bytes (via
\`query\$to_bytes()\`)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithMessagesRangeRequest$to_bytes()

#### Returns

Raw vector with serialized request bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithMessagesRangeRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
