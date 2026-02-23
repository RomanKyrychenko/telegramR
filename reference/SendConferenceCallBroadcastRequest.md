# SendConferenceCallBroadcastRequest

Telegram API type SendConferenceCallBroadcastRequest

## Details

SendConferenceCallBroadcastRequest R6 class

Represents SendConferenceCallBroadcastRequest TLRequest.

## Public fields

- `call`:

  Field.

- `block`:

  Field.

## Methods

### Public methods

- [`SendConferenceCallBroadcastRequest$new()`](#method-SendConferenceCallBroadcastRequest-new)

- [`SendConferenceCallBroadcastRequest$resolve()`](#method-SendConferenceCallBroadcastRequest-resolve)

- [`SendConferenceCallBroadcastRequest$to_list()`](#method-SendConferenceCallBroadcastRequest-to_list)

- [`SendConferenceCallBroadcastRequest$bytes()`](#method-SendConferenceCallBroadcastRequest-bytes)

- [`SendConferenceCallBroadcastRequest$from_reader()`](#method-SendConferenceCallBroadcastRequest-from_reader)

- [`SendConferenceCallBroadcastRequest$clone()`](#method-SendConferenceCallBroadcastRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a SendConferenceCallBroadcastRequest

#### Usage

    SendConferenceCallBroadcastRequest$new(call, block)

#### Arguments

- `call`:

  Input group call object.

- `block`:

  Raw vector or single string representing bytes.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    SendConferenceCallBroadcastRequest$resolve(client, utils)

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

    SendConferenceCallBroadcastRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes \`call\$bytes()\`
exists.

#### Usage

    SendConferenceCallBroadcastRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    SendConferenceCallBroadcastRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SendConferenceCallBroadcastRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
