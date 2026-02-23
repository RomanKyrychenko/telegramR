# SaveCallDebugRequest

Telegram API type SaveCallDebugRequest

## Details

SaveCallDebugRequest R6 class

Represents SaveCallDebugRequest TLRequest.

## Public fields

- `peer`:

  Field.

- `debug`:

  Field.

## Methods

### Public methods

- [`SaveCallDebugRequest$new()`](#method-SaveCallDebugRequest-new)

- [`SaveCallDebugRequest$resolve()`](#method-SaveCallDebugRequest-resolve)

- [`SaveCallDebugRequest$to_list()`](#method-SaveCallDebugRequest-to_list)

- [`SaveCallDebugRequest$bytes()`](#method-SaveCallDebugRequest-bytes)

- [`SaveCallDebugRequest$from_reader()`](#method-SaveCallDebugRequest-from_reader)

- [`SaveCallDebugRequest$clone()`](#method-SaveCallDebugRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a SaveCallDebugRequest

#### Usage

    SaveCallDebugRequest$new(peer, debug)

#### Arguments

- `peer`:

  Input phone call object.

- `debug`:

  DataJSON-like object.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

This is a no-op here but kept for parity with other requests.

#### Usage

    SaveCallDebugRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (unused).

- `utils`:

  Utility object (unused).

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    SaveCallDebugRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes \`peer\$bytes()\`
and \`debug\$bytes()\` exist. Returns raw(0) and emits a warning if they
don't.

#### Usage

    SaveCallDebugRequest$bytes()

#### Returns

raw vector (bytes)

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    SaveCallDebugRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SaveCallDebugRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
