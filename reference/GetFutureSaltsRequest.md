# GetFutureSaltsRequest R6 class

Represents the TL request \`GetFutureSaltsRequest\`.

R6 class representing a request to get future salts. Contains methods
for serialization to list and bytes.

## Details

Fields: - num: integer (32-bit)

Methods: - new(num): create new instance. - to_list(): return an R list
representation. - to_raw(): serialize to raw vector (bytes) in little
endian as used in TL.

Writes constructor id 0xb921bd04 as little-endian bytes: 0x04 0xBD 0x21
0xB9, then writes num as 4-byte little-endian integer.

## Public fields

- `num`:

  Field. Initialize a GetFutureSaltsRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`GetFutureSaltsRequest$new()`](#method-GetFutureSaltsRequest-new)

- [`GetFutureSaltsRequest$to_list()`](#method-GetFutureSaltsRequest-to_list)

- [`GetFutureSaltsRequest$to_bytes()`](#method-GetFutureSaltsRequest-to_bytes)

- [`GetFutureSaltsRequest$clone()`](#method-GetFutureSaltsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    GetFutureSaltsRequest$new(num)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetFutureSaltsRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetFutureSaltsRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetFutureSaltsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor ID for the request

- `SUBCLASS_OF_ID`:

  Subclass ID for the request

- `num`:

  Number of future salts to request Initialize the GetFutureSaltsRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`GetFutureSaltsRequest$new()`](#method-GetFutureSaltsRequest-new)

- [`GetFutureSaltsRequest$to_list()`](#method-GetFutureSaltsRequest-to_list)

- [`GetFutureSaltsRequest$to_bytes()`](#method-GetFutureSaltsRequest-to_bytes)

- [`GetFutureSaltsRequest$clone()`](#method-GetFutureSaltsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    GetFutureSaltsRequest$new(num)

#### Arguments

- `num`:

  The number of future salts to request Convert to list representation

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetFutureSaltsRequest$to_list()

#### Returns

A list representation of the GetFutureSaltsRequest Serialize to raw
bytes

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetFutureSaltsRequest$to_bytes()

#### Returns

A raw vector representing the serialized GetFutureSaltsRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetFutureSaltsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
