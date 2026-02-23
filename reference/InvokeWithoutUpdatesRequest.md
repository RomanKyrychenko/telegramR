# InvokeWithoutUpdatesRequest R6 class

Represents the TL request \`InvokeWithoutUpdatesRequest\`.

R6 class representing a request that invokes a nested \`query\` without
producing any updates. The nested \`query\` object is expected to
implement \`to_list()\` and \`to_bytes()\` for proper serialization.

## Value

An R6 object of class `InvokeWithoutUpdatesRequest`.

## Details

Fields: - query: TypeX (an object representing a TL query). May be an R6
TL object with to_raw()/to_list().

Methods: - new(query): create new instance. - to_list(): return an R
list representation. - to_raw(): serialize to raw vector (bytes) in
little endian as used in TL.

Note: to_raw() expects the query to provide a to_raw() method returning
a raw vector, or to already be a raw vector. If neither is true, the
query is written via as.raw of its serialized form where appropriate.

## Public fields

- `query`:

  Field. Initialize an InvokeWithoutUpdatesRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithoutUpdatesRequest$new()`](#method-InvokeWithoutUpdatesRequest-new)

- [`InvokeWithoutUpdatesRequest$to_list()`](#method-InvokeWithoutUpdatesRequest-to_list)

- [`InvokeWithoutUpdatesRequest$to_bytes()`](#method-InvokeWithoutUpdatesRequest-to_bytes)

- [`InvokeWithoutUpdatesRequest$clone()`](#method-InvokeWithoutUpdatesRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithoutUpdatesRequest$new(query)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithoutUpdatesRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithoutUpdatesRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithoutUpdatesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `query`:

  Field. Initialize a new InvokeWithoutUpdatesRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithoutUpdatesRequest$new()`](#method-InvokeWithoutUpdatesRequest-new)

- [`InvokeWithoutUpdatesRequest$to_list()`](#method-InvokeWithoutUpdatesRequest-to_list)

- [`InvokeWithoutUpdatesRequest$to_bytes()`](#method-InvokeWithoutUpdatesRequest-to_bytes)

- [`InvokeWithoutUpdatesRequest$clone()`](#method-InvokeWithoutUpdatesRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithoutUpdatesRequest$new(query)

#### Arguments

- `query`:

  Nested query object that responds to `to_list` and `to_bytes`. Convert
  the request to a list

  Produces a plain R list suitable for debugging or JSON serialization.
  If the nested `query` implements `to_list()`, that representation will
  be used.

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithoutUpdatesRequest$to_list()

#### Returns

A list with keys: `"_"` and `query`. Serialize the request to raw bytes

The serialization consists of the constructor id followed by the nested
query's serialized bytes.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithoutUpdatesRequest$to_bytes()

#### Returns

Raw vector containing the serialized request bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithoutUpdatesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
