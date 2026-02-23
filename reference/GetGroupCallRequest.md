# GetGroupCallRequest

Telegram API type GetGroupCallRequest

## Details

GetGroupCallRequest R6 class

Represents GetGroupCallRequest TLRequest.

## Public fields

- `call`:

  Field.

- `limit`:

  Field.

## Methods

### Public methods

- [`GetGroupCallRequest$new()`](#method-GetGroupCallRequest-new)

- [`GetGroupCallRequest$resolve()`](#method-GetGroupCallRequest-resolve)

- [`GetGroupCallRequest$to_list()`](#method-GetGroupCallRequest-to_list)

- [`GetGroupCallRequest$bytes()`](#method-GetGroupCallRequest-bytes)

- [`GetGroupCallRequest$from_reader()`](#method-GetGroupCallRequest-from_reader)

- [`GetGroupCallRequest$clone()`](#method-GetGroupCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a GetGroupCallRequest

#### Usage

    GetGroupCallRequest$new(call, limit)

#### Arguments

- `call`:

  Input group call object.

- `limit`:

  Integer limit.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    GetGroupCallRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (passed to utils functions).

- `utils`:

  Utility object with get_input_group_call method.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    GetGroupCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    GetGroupCallRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetGroupCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetGroupCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
