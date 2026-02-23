# StartScheduledGroupCallRequest

Telegram API type StartScheduledGroupCallRequest

## Details

StartScheduledGroupCallRequest R6 class

Represents StartScheduledGroupCallRequest TLRequest.

## Public fields

- `call`:

  Field.

## Methods

### Public methods

- [`StartScheduledGroupCallRequest$new()`](#method-StartScheduledGroupCallRequest-new)

- [`StartScheduledGroupCallRequest$resolve()`](#method-StartScheduledGroupCallRequest-resolve)

- [`StartScheduledGroupCallRequest$to_list()`](#method-StartScheduledGroupCallRequest-to_list)

- [`StartScheduledGroupCallRequest$bytes()`](#method-StartScheduledGroupCallRequest-bytes)

- [`StartScheduledGroupCallRequest$from_reader()`](#method-StartScheduledGroupCallRequest-from_reader)

- [`StartScheduledGroupCallRequest$clone()`](#method-StartScheduledGroupCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a StartScheduledGroupCallRequest

#### Usage

    StartScheduledGroupCallRequest$new(call)

#### Arguments

- `call`:

  Input group call (object).

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    StartScheduledGroupCallRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (passed to utils functions).

- `utils`:

  Utility object with get_input_group_call method.

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    StartScheduledGroupCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes
\`self\$call\$bytes()\` exists.

#### Usage

    StartScheduledGroupCallRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    StartScheduledGroupCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    StartScheduledGroupCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
