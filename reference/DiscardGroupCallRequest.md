# DiscardGroupCallRequest

Telegram API type DiscardGroupCallRequest

## Details

DiscardGroupCallRequest R6 class

Represents DiscardGroupCallRequest TLRequest.

## Public fields

- `call`:

  Field.

## Methods

### Public methods

- [`DiscardGroupCallRequest$new()`](#method-DiscardGroupCallRequest-new)

- [`DiscardGroupCallRequest$resolve()`](#method-DiscardGroupCallRequest-resolve)

- [`DiscardGroupCallRequest$to_list()`](#method-DiscardGroupCallRequest-to_list)

- [`DiscardGroupCallRequest$bytes()`](#method-DiscardGroupCallRequest-bytes)

- [`DiscardGroupCallRequest$from_reader()`](#method-DiscardGroupCallRequest-from_reader)

- [`DiscardGroupCallRequest$clone()`](#method-DiscardGroupCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a DiscardGroupCallRequest

#### Usage

    DiscardGroupCallRequest$new(call)

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

    DiscardGroupCallRequest$resolve(client, utils)

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

    DiscardGroupCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    DiscardGroupCallRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    DiscardGroupCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DiscardGroupCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
