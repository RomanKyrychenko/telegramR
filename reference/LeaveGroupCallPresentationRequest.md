# LeaveGroupCallPresentationRequest

Telegram API type LeaveGroupCallPresentationRequest

## Details

LeaveGroupCallPresentationRequest R6 class

Represents LeaveGroupCallPresentationRequest TLRequest.

## Public fields

- `call`:

  Field.

## Methods

### Public methods

- [`LeaveGroupCallPresentationRequest$new()`](#method-LeaveGroupCallPresentationRequest-new)

- [`LeaveGroupCallPresentationRequest$resolve()`](#method-LeaveGroupCallPresentationRequest-resolve)

- [`LeaveGroupCallPresentationRequest$to_list()`](#method-LeaveGroupCallPresentationRequest-to_list)

- [`LeaveGroupCallPresentationRequest$bytes()`](#method-LeaveGroupCallPresentationRequest-bytes)

- [`LeaveGroupCallPresentationRequest$from_reader()`](#method-LeaveGroupCallPresentationRequest-from_reader)

- [`LeaveGroupCallPresentationRequest$clone()`](#method-LeaveGroupCallPresentationRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a LeaveGroupCallPresentationRequest

#### Usage

    LeaveGroupCallPresentationRequest$new(call)

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

    LeaveGroupCallPresentationRequest$resolve(client, utils)

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

    LeaveGroupCallPresentationRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes \`call\$bytes()\`
exists.

#### Usage

    LeaveGroupCallPresentationRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    LeaveGroupCallPresentationRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LeaveGroupCallPresentationRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
