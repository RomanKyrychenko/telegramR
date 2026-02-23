# SaveCallLogRequest

Telegram API type SaveCallLogRequest

## Details

SaveCallLogRequest R6 class

Represents SaveCallLogRequest TLRequest.

## Public fields

- `peer`:

  Field.

- `file`:

  Field.

## Methods

### Public methods

- [`SaveCallLogRequest$new()`](#method-SaveCallLogRequest-new)

- [`SaveCallLogRequest$resolve()`](#method-SaveCallLogRequest-resolve)

- [`SaveCallLogRequest$to_list()`](#method-SaveCallLogRequest-to_list)

- [`SaveCallLogRequest$bytes()`](#method-SaveCallLogRequest-bytes)

- [`SaveCallLogRequest$from_reader()`](#method-SaveCallLogRequest-from_reader)

- [`SaveCallLogRequest$clone()`](#method-SaveCallLogRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a SaveCallLogRequest

#### Usage

    SaveCallLogRequest$new(peer, file)

#### Arguments

- `peer`:

  Input phone call object.

- `file`:

  Input file object.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

This is a no-op here but kept for parity with other requests.

#### Usage

    SaveCallLogRequest$resolve(client, utils)

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

    SaveCallLogRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes \`peer\$bytes()\`
and \`file\$bytes()\` exist. Returns raw(0) and emits a warning if they
don't.

#### Usage

    SaveCallLogRequest$bytes()

#### Returns

raw vector (bytes)

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    SaveCallLogRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SaveCallLogRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
