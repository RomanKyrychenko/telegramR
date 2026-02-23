# DestroySessionRequest R6 class

Represents the TL request \`DestroySessionRequest\`.

## Details

Fields: - session_id: numeric/integer (64-bit placeholder)

Methods: - new(session_id): create new instance. - to_list(): return an
R list representation. - to_raw(): serialize to raw vector (bytes) in
little endian as used in TL.

Writes constructor id 0xe7512126 as little-endian bytes: 0x26 0x21 0x51
0xE7, then writes session_id as 8-byte little-endian (placeholder via
numeric).

## Public fields

- `session_id`:

  Field. Initialize a DestroySessionRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`DestroySessionRequest$new()`](#method-DestroySessionRequest-new)

- [`DestroySessionRequest$to_list()`](#method-DestroySessionRequest-to_list)

- [`DestroySessionRequest$to_bytes()`](#method-DestroySessionRequest-to_bytes)

- [`DestroySessionRequest$clone()`](#method-DestroySessionRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    DestroySessionRequest$new(session_id)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    DestroySessionRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    DestroySessionRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DestroySessionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor ID for the request

- `SUBCLASS_OF_ID`:

  Subclass ID for the request

- `session_id`:

  Session ID to be destroyed Initialize the DestroySessionRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`DestroySessionRequest$new()`](#method-DestroySessionRequest-new)

- [`DestroySessionRequest$to_list()`](#method-DestroySessionRequest-to_list)

- [`DestroySessionRequest$to_bytes()`](#method-DestroySessionRequest-to_bytes)

- [`DestroySessionRequest$clone()`](#method-DestroySessionRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    DestroySessionRequest$new(session_id)

#### Arguments

- `session_id`:

  The ID of the session to destroy Convert to list representation

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    DestroySessionRequest$to_list()

#### Returns

A list representation of the DestroySessionRequest Serialize to raw
bytes

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    DestroySessionRequest$to_bytes()

#### Returns

A raw vector representing the serialized DestroySessionRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DestroySessionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
