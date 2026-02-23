# ExportGroupCallInviteRequest

Telegram API type ExportGroupCallInviteRequest

## Details

ExportGroupCallInviteRequest R6 class

Represents ExportGroupCallInviteRequest TLRequest.

## Public fields

- `call`:

  Field.

- `can_self_unmute`:

  Field.

## Methods

### Public methods

- [`ExportGroupCallInviteRequest$new()`](#method-ExportGroupCallInviteRequest-new)

- [`ExportGroupCallInviteRequest$resolve()`](#method-ExportGroupCallInviteRequest-resolve)

- [`ExportGroupCallInviteRequest$to_list()`](#method-ExportGroupCallInviteRequest-to_list)

- [`ExportGroupCallInviteRequest$bytes()`](#method-ExportGroupCallInviteRequest-bytes)

- [`ExportGroupCallInviteRequest$from_reader()`](#method-ExportGroupCallInviteRequest-from_reader)

- [`ExportGroupCallInviteRequest$clone()`](#method-ExportGroupCallInviteRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize an ExportGroupCallInviteRequest

#### Usage

    ExportGroupCallInviteRequest$new(call, can_self_unmute = NULL)

#### Arguments

- `call`:

  Input group call object.

- `can_self_unmute`:

  Logical or NULL.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    ExportGroupCallInviteRequest$resolve(client, utils)

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

    ExportGroupCallInviteRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    ExportGroupCallInviteRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ExportGroupCallInviteRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ExportGroupCallInviteRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
