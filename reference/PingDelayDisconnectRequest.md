# PingDelayDisconnectRequest R6 class

Represents the TL request \`PingDelayDisconnectRequest\`.

R6 class representing a ping request that asks the server to delay a
disconnect. Contains a 64-bit `ping_id` and an integer
`disconnect_delay` (seconds). Provides methods to convert to a list and
to serialize to raw bytes.

## Details

Fields: - ping_id: numeric/integer (64-bit placeholder) -
disconnect_delay: integer (32-bit)

Methods: - new(ping_id, disconnect_delay): create new instance. -
to_list(): return an R list representation. - to_raw(): serialize to raw
vector (bytes) in little endian as used in TL.

Note: 64-bit integer handling uses numeric placeholders via writeBin.

## Public fields

- `ping_id`:

  Field.

- `disconnect_delay`:

  Field. Initialize a PingDelayDisconnectRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`PingDelayDisconnectRequest$new()`](#method-PingDelayDisconnectRequest-new)

- [`PingDelayDisconnectRequest$to_list()`](#method-PingDelayDisconnectRequest-to_list)

- [`PingDelayDisconnectRequest$to_bytes()`](#method-PingDelayDisconnectRequest-to_bytes)

- [`PingDelayDisconnectRequest$clone()`](#method-PingDelayDisconnectRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    PingDelayDisconnectRequest$new(ping_id, disconnect_delay)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    PingDelayDisconnectRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    PingDelayDisconnectRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PingDelayDisconnectRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `ping_id`:

  Field.

- `disconnect_delay`:

  Field. Initialize PingDelayDisconnectRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`PingDelayDisconnectRequest$new()`](#method-PingDelayDisconnectRequest-new)

- [`PingDelayDisconnectRequest$to_list()`](#method-PingDelayDisconnectRequest-to_list)

- [`PingDelayDisconnectRequest$to_bytes()`](#method-PingDelayDisconnectRequest-to_bytes)

- [`PingDelayDisconnectRequest$clone()`](#method-PingDelayDisconnectRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    PingDelayDisconnectRequest$new(ping_id, disconnect_delay)

#### Arguments

- `ping_id`:

  Integer64 identifier for the ping.

- `disconnect_delay`:

  Integer number of seconds to delay disconnect. Convert to list
  representation

  Produces a plain R list suitable for debugging or JSON serialization.

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    PingDelayDisconnectRequest$to_list()

#### Returns

A list with keys: `"_"`, `ping_id`, and `disconnect_delay`. Serialize to
raw bytes

Serializes the request into a raw vector containing: - constructor id (4
bytes little-endian) - `ping_id` as 8-byte little-endian integer -
`disconnect_delay` as 4-byte little-endian integer

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    PingDelayDisconnectRequest$to_bytes()

#### Returns

Raw vector with serialized request bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PingDelayDisconnectRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
