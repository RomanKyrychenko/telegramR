# CheckGroupCallRequest

Telegram API type CheckGroupCallRequest

## Details

CheckGroupCallRequest R6 class

## Public fields

- `call`:

  Field.

- `sources`:

  Field.

## Methods

### Public methods

- [`CheckGroupCallRequest$new()`](#method-CheckGroupCallRequest-new)

- [`CheckGroupCallRequest$resolve()`](#method-CheckGroupCallRequest-resolve)

- [`CheckGroupCallRequest$to_list()`](#method-CheckGroupCallRequest-to_list)

- [`CheckGroupCallRequest$bytes()`](#method-CheckGroupCallRequest-bytes)

- [`CheckGroupCallRequest$from_reader()`](#method-CheckGroupCallRequest-from_reader)

- [`CheckGroupCallRequest$clone()`](#method-CheckGroupCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a CheckGroupCallRequest

#### Usage

    CheckGroupCallRequest$new(call, sources)

#### Arguments

- `call`:

  Input group call object.

- `sources`:

  List of integers.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    CheckGroupCallRequest$resolve(client, utils)

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

    CheckGroupCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    CheckGroupCallRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    CheckGroupCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CheckGroupCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
