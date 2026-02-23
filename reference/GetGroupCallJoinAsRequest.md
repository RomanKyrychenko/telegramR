# GetGroupCallJoinAsRequest

Telegram API type GetGroupCallJoinAsRequest

## Details

GetGroupCallJoinAsRequest R6 class

Represents GetGroupCallJoinAsRequest TLRequest.

## Public fields

- `peer`:

  Field.

## Methods

### Public methods

- [`GetGroupCallJoinAsRequest$new()`](#method-GetGroupCallJoinAsRequest-new)

- [`GetGroupCallJoinAsRequest$resolve()`](#method-GetGroupCallJoinAsRequest-resolve)

- [`GetGroupCallJoinAsRequest$to_list()`](#method-GetGroupCallJoinAsRequest-to_list)

- [`GetGroupCallJoinAsRequest$bytes()`](#method-GetGroupCallJoinAsRequest-bytes)

- [`GetGroupCallJoinAsRequest$from_reader()`](#method-GetGroupCallJoinAsRequest-from_reader)

- [`GetGroupCallJoinAsRequest$clone()`](#method-GetGroupCallJoinAsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a GetGroupCallJoinAsRequest

#### Usage

    GetGroupCallJoinAsRequest$new(peer)

#### Arguments

- `peer`:

  Input peer object.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    GetGroupCallJoinAsRequest$resolve(client, utils)

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

    GetGroupCallJoinAsRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    GetGroupCallJoinAsRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetGroupCallJoinAsRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetGroupCallJoinAsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
