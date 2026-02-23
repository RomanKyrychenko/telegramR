# SaveDefaultGroupCallJoinAsRequest

Telegram API type SaveDefaultGroupCallJoinAsRequest

## Details

SaveDefaultGroupCallJoinAsRequest R6 class

Represents SaveDefaultGroupCallJoinAsRequest TLRequest.

## Public fields

- `peer`:

  Field.

- `join_as`:

  Field.

## Methods

### Public methods

- [`SaveDefaultGroupCallJoinAsRequest$new()`](#method-SaveDefaultGroupCallJoinAsRequest-new)

- [`SaveDefaultGroupCallJoinAsRequest$resolve()`](#method-SaveDefaultGroupCallJoinAsRequest-resolve)

- [`SaveDefaultGroupCallJoinAsRequest$to_list()`](#method-SaveDefaultGroupCallJoinAsRequest-to_list)

- [`SaveDefaultGroupCallJoinAsRequest$bytes()`](#method-SaveDefaultGroupCallJoinAsRequest-bytes)

- [`SaveDefaultGroupCallJoinAsRequest$from_reader()`](#method-SaveDefaultGroupCallJoinAsRequest-from_reader)

- [`SaveDefaultGroupCallJoinAsRequest$clone()`](#method-SaveDefaultGroupCallJoinAsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a SaveDefaultGroupCallJoinAsRequest

#### Usage

    SaveDefaultGroupCallJoinAsRequest$new(peer, join_as)

#### Arguments

- `peer`:

  Input peer object.

- `join_as`:

  Input peer object to join as.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    SaveDefaultGroupCallJoinAsRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (passed to utils functions).

- `utils`:

  Utility object with get_input_peer method.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    SaveDefaultGroupCallJoinAsRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes \`peer\$bytes()\`
and \`join_as\$bytes()\` exist.

#### Usage

    SaveDefaultGroupCallJoinAsRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    SaveDefaultGroupCallJoinAsRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SaveDefaultGroupCallJoinAsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
