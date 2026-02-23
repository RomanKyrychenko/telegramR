# InviteConferenceCallParticipantRequest

Telegram API type InviteConferenceCallParticipantRequest

## Details

InviteConferenceCallParticipantRequest R6 class

Represents InviteConferenceCallParticipantRequest TLRequest.

## Public fields

- `call`:

  Field.

- `user_id`:

  Field.

- `video`:

  Field.

## Methods

### Public methods

- [`InviteConferenceCallParticipantRequest$new()`](#method-InviteConferenceCallParticipantRequest-new)

- [`InviteConferenceCallParticipantRequest$resolve()`](#method-InviteConferenceCallParticipantRequest-resolve)

- [`InviteConferenceCallParticipantRequest$to_list()`](#method-InviteConferenceCallParticipantRequest-to_list)

- [`InviteConferenceCallParticipantRequest$bytes()`](#method-InviteConferenceCallParticipantRequest-bytes)

- [`InviteConferenceCallParticipantRequest$from_reader()`](#method-InviteConferenceCallParticipantRequest-from_reader)

- [`InviteConferenceCallParticipantRequest$clone()`](#method-InviteConferenceCallParticipantRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize an InviteConferenceCallParticipantRequest

#### Usage

    InviteConferenceCallParticipantRequest$new(call, user_id, video = NULL)

#### Arguments

- `call`:

  Input group call object.

- `user_id`:

  Input user object.

- `video`:

  Logical or NULL.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    InviteConferenceCallParticipantRequest$resolve(client, utils)

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

    InviteConferenceCallParticipantRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    InviteConferenceCallParticipantRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    InviteConferenceCallParticipantRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InviteConferenceCallParticipantRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
