# LeaveGroupCallRequest

Telegram API type LeaveGroupCallRequest

## Details

LeaveGroupCallRequest R6 class

Represents LeaveGroupCallRequest TLRequest.

## Public fields

- `call`:

  Field.

- `source`:

  Field.

## Methods

### Public methods

- [`LeaveGroupCallRequest$new()`](#method-LeaveGroupCallRequest-new)

- [`LeaveGroupCallRequest$resolve()`](#method-LeaveGroupCallRequest-resolve)

- [`LeaveGroupCallRequest$to_list()`](#method-LeaveGroupCallRequest-to_list)

- [`LeaveGroupCallRequest$bytes()`](#method-LeaveGroupCallRequest-bytes)

- [`LeaveGroupCallRequest$from_reader()`](#method-LeaveGroupCallRequest-from_reader)

- [`LeaveGroupCallRequest$clone()`](#method-LeaveGroupCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a LeaveGroupCallRequest

#### Usage

    LeaveGroupCallRequest$new(call, source)

#### Arguments

- `call`:

  Input group call object.

- `source`:

  Integer source identifier.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    LeaveGroupCallRequest$resolve(client, utils)

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

    LeaveGroupCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes \`call\$bytes()\`
exists.

#### Usage

    LeaveGroupCallRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    LeaveGroupCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LeaveGroupCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
