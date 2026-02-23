# InvokeAfterMsgRequest R6 class

Represents a request that will be invoked after a specific message ID.
Holds the target message identifier and a nested `query` object which
will be executed after the message with `msg_id`.

## Details

Represents the TL request \`InvokeAfterMsgRequest\`.

Fields: - msg_id: numeric/integer (64-bit placeholder) - query: TypeX
(an object representing a TL query). May be an R6 TL object with
to_raw()/to_list().

Methods: - new(msg_id, query): create new instance. - to_list(): return
an R list representation. - to_raw(): serialize to raw vector (bytes) in
little endian as used in TL.

to_raw() writes the constructor id (0xcb9f372d) in little-endian (bytes:
0x2D 0x37 0x9F 0xCB), then msg_id as 8-byte little-endian value,
followed by nested query bytes. Note: writeBin on numeric with size=8
uses IEEE754 double; for exact 64-bit two's-complement preservation,
replace with a dedicated 64-bit writer.

## Public fields

- `msg_id`:

  Field.

- `query`:

  Field. Initialize an InvokeAfterMsgRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeAfterMsgRequest$new()`](#method-InvokeAfterMsgRequest-new)

- [`InvokeAfterMsgRequest$to_list()`](#method-InvokeAfterMsgRequest-to_list)

- [`InvokeAfterMsgRequest$to_bytes()`](#method-InvokeAfterMsgRequest-to_bytes)

- [`InvokeAfterMsgRequest$clone()`](#method-InvokeAfterMsgRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeAfterMsgRequest$new(msg_id, query)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeAfterMsgRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeAfterMsgRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeAfterMsgRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `msg_id`:

  Field.

- `query`:

  Field. Initialize a new InvokeAfterMsgRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeAfterMsgRequest$new()`](#method-InvokeAfterMsgRequest-new)

- [`InvokeAfterMsgRequest$to_list()`](#method-InvokeAfterMsgRequest-to_list)

- [`InvokeAfterMsgRequest$to_bytes()`](#method-InvokeAfterMsgRequest-to_bytes)

- [`InvokeAfterMsgRequest$clone()`](#method-InvokeAfterMsgRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeAfterMsgRequest$new(msg_id, query)

#### Arguments

- `msg_id`:

  Integer64 identifier of the message after which the query should run.

- `query`:

  Nested query object that responds to `to_list` and `to_bytes`. Convert
  to list representation

  Produces a plain R list suitable for JSON or debugging. If the nested
  `query` responds to `to_list`, that representation will be used.

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeAfterMsgRequest$to_list()

#### Returns

List with keys: `"_"`, `msg_id`, and `query`. Serialize to raw bytes

Produces a raw vector containing: - constructor id (4 bytes
little-endian) - `msg_id` as 8-byte little-endian integer - serialized
bytes of the nested `query` (via `query$to_bytes()`)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeAfterMsgRequest$to_bytes()

#### Returns

Raw vector with serialized request bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeAfterMsgRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
