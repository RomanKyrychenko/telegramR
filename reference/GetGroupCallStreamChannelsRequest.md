# GetGroupCallStreamChannelsRequest

Telegram API type GetGroupCallStreamChannelsRequest

## Details

GetGroupCallStreamChannelsRequest R6 class

Represents GetGroupCallStreamChannelsRequest TLRequest.

## Public fields

- `call`:

  Field.

## Methods

### Public methods

- [`GetGroupCallStreamChannelsRequest$new()`](#method-GetGroupCallStreamChannelsRequest-new)

- [`GetGroupCallStreamChannelsRequest$resolve()`](#method-GetGroupCallStreamChannelsRequest-resolve)

- [`GetGroupCallStreamChannelsRequest$to_list()`](#method-GetGroupCallStreamChannelsRequest-to_list)

- [`GetGroupCallStreamChannelsRequest$bytes()`](#method-GetGroupCallStreamChannelsRequest-bytes)

- [`GetGroupCallStreamChannelsRequest$from_reader()`](#method-GetGroupCallStreamChannelsRequest-from_reader)

- [`GetGroupCallStreamChannelsRequest$clone()`](#method-GetGroupCallStreamChannelsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a GetGroupCallStreamChannelsRequest

#### Usage

    GetGroupCallStreamChannelsRequest$new(call)

#### Arguments

- `call`:

  Input group call object.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    GetGroupCallStreamChannelsRequest$resolve(client, utils)

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

    GetGroupCallStreamChannelsRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    GetGroupCallStreamChannelsRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetGroupCallStreamChannelsRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetGroupCallStreamChannelsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
