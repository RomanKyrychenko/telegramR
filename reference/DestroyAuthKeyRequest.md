# DestroyAuthKeyRequest R6 class

Represents the TL request \`DestroyAuthKeyRequest\`.

R6 class representing a request to destroy the authentication key.
Contains methods for serialization to list and bytes.

## Details

Fields: - (no fields)

Methods: - new(): create new instance. - to_list(): return an R list
representation. - to_raw(): serialize to raw vector (bytes) in little
endian as used in TL. Initialize a DestroyAuthKeyRequest Convert object
to a simple list (dictionary-like)

Writes constructor id 0xd1435160 as little-endian bytes: 0x60 0x51 0x43
0xD1

## Public fields

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`DestroyAuthKeyRequest$to_list()`](#method-DestroyAuthKeyRequest-to_list)

- [`DestroyAuthKeyRequest$to_bytes()`](#method-DestroyAuthKeyRequest-to_bytes)

- [`DestroyAuthKeyRequest$clone()`](#method-DestroyAuthKeyRequest-clone)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    DestroyAuthKeyRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    DestroyAuthKeyRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DestroyAuthKeyRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor ID for the request

- `SUBCLASS_OF_ID`:

  Subclass ID for the request Convert to list representation

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`DestroyAuthKeyRequest$to_list()`](#method-DestroyAuthKeyRequest-to_list)

- [`DestroyAuthKeyRequest$to_bytes()`](#method-DestroyAuthKeyRequest-to_bytes)

- [`DestroyAuthKeyRequest$clone()`](#method-DestroyAuthKeyRequest-clone)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    DestroyAuthKeyRequest$to_list()

#### Returns

A list representation of the DestroyAuthKeyRequest Serialize to raw
bytes

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    DestroyAuthKeyRequest$to_bytes()

#### Returns

A raw vector representing the serialized DestroyAuthKeyRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DestroyAuthKeyRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
