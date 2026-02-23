# DeclineConferenceCallInviteRequest

Telegram API type DeclineConferenceCallInviteRequest

## Details

DeclineConferenceCallInviteRequest R6 class

Represents DeclineConferenceCallInviteRequest TLRequest.

## Public fields

- `msg_id`:

  Field.

## Methods

### Public methods

- [`DeclineConferenceCallInviteRequest$new()`](#method-DeclineConferenceCallInviteRequest-new)

- [`DeclineConferenceCallInviteRequest$to_list()`](#method-DeclineConferenceCallInviteRequest-to_list)

- [`DeclineConferenceCallInviteRequest$bytes()`](#method-DeclineConferenceCallInviteRequest-bytes)

- [`DeclineConferenceCallInviteRequest$from_reader()`](#method-DeclineConferenceCallInviteRequest-from_reader)

- [`DeclineConferenceCallInviteRequest$clone()`](#method-DeclineConferenceCallInviteRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a DeclineConferenceCallInviteRequest

#### Usage

    DeclineConferenceCallInviteRequest$new(msg_id)

#### Arguments

- `msg_id`:

  Integer message id.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    DeclineConferenceCallInviteRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation.

#### Usage

    DeclineConferenceCallInviteRequest$bytes()

#### Returns

raw vector (bytes)

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    DeclineConferenceCallInviteRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DeclineConferenceCallInviteRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
