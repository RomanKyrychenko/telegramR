# PingRequest R6 class

Represents the TL request \`PingRequest\`.

Represents a simple ping request used to check connectivity/latency.
Contains a 64-bit `ping_id` and methods to serialize to a list or raw
bytes.

## Value

An R6 object of class `PingRequest`.

## Details

Fields: - ping_id: numeric/integer (64-bit placeholder)

Methods: - new(ping_id): create new instance. - to_list(): return an R
list representation. - to_raw(): serialize to raw vector (bytes) in
little endian as used in TL. - from_reader(reader): construct instance
from a reader with read_long().

Note: 64-bit integer handling uses numeric placeholders via writeBin.

## Public fields

- `ping_id`:

  Field. Initialize a PingRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`PingRequest$new()`](#method-PingRequest-new)

- [`PingRequest$to_list()`](#method-PingRequest-to_list)

- [`PingRequest$to_bytes()`](#method-PingRequest-to_bytes)

- [`PingRequest$clone()`](#method-PingRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    PingRequest$new(ping_id)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    PingRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    PingRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PingRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `ping_id`:

  Field. Initialize PingRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`PingRequest$new()`](#method-PingRequest-new)

- [`PingRequest$to_list()`](#method-PingRequest-to_list)

- [`PingRequest$to_bytes()`](#method-PingRequest-to_bytes)

- [`PingRequest$clone()`](#method-PingRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    PingRequest$new(ping_id)

#### Arguments

- `ping_id`:

  Integer64 identifier for the ping. Convert to list representation

  Produces a plain R list suitable for debugging or JSON serialization.

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    PingRequest$to_list()

#### Returns

A list with keys: `"_"` and `ping_id`. Serialize to raw bytes

Produces a raw vector containing: - constructor id (4 bytes
little-endian) - `ping_id` as 8-byte little-endian integer

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    PingRequest$to_bytes()

#### Returns

Raw vector with serialized request bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PingRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
