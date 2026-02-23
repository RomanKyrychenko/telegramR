# InviteToGroupCallRequest

Telegram API type InviteToGroupCallRequest

## Details

InviteToGroupCallRequest R6 class

Represents InviteToGroupCallRequest TLRequest.

## Public fields

- `call`:

  Field.

- `users`:

  Field.

## Methods

### Public methods

- [`InviteToGroupCallRequest$new()`](#method-InviteToGroupCallRequest-new)

- [`InviteToGroupCallRequest$resolve()`](#method-InviteToGroupCallRequest-resolve)

- [`InviteToGroupCallRequest$to_list()`](#method-InviteToGroupCallRequest-to_list)

- [`InviteToGroupCallRequest$bytes()`](#method-InviteToGroupCallRequest-bytes)

- [`InviteToGroupCallRequest$from_reader()`](#method-InviteToGroupCallRequest-from_reader)

- [`InviteToGroupCallRequest$clone()`](#method-InviteToGroupCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize an InviteToGroupCallRequest

#### Usage

    InviteToGroupCallRequest$new(call, users)

#### Arguments

- `call`:

  Input group call object.

- `users`:

  List of input user objects.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    InviteToGroupCallRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (passed to utils functions).

- `utils`:

  Utility object with get_input_group_call and get_input_user methods.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    InviteToGroupCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    InviteToGroupCallRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    InviteToGroupCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InviteToGroupCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
