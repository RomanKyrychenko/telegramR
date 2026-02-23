# JoinGroupCallPresentationRequest

Telegram API type JoinGroupCallPresentationRequest

## Details

JoinGroupCallPresentationRequest R6 class

Represents JoinGroupCallPresentationRequest TLRequest.

## Public fields

- `call`:

  Field.

- `params`:

  Field.

## Methods

### Public methods

- [`JoinGroupCallPresentationRequest$new()`](#method-JoinGroupCallPresentationRequest-new)

- [`JoinGroupCallPresentationRequest$resolve()`](#method-JoinGroupCallPresentationRequest-resolve)

- [`JoinGroupCallPresentationRequest$to_list()`](#method-JoinGroupCallPresentationRequest-to_list)

- [`JoinGroupCallPresentationRequest$bytes()`](#method-JoinGroupCallPresentationRequest-bytes)

- [`JoinGroupCallPresentationRequest$from_reader()`](#method-JoinGroupCallPresentationRequest-from_reader)

- [`JoinGroupCallPresentationRequest$clone()`](#method-JoinGroupCallPresentationRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a JoinGroupCallPresentationRequest

#### Usage

    JoinGroupCallPresentationRequest$new(call, params)

#### Arguments

- `call`:

  Input group call object.

- `params`:

  DataJSON-like object.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    JoinGroupCallPresentationRequest$resolve(client, utils)

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

    JoinGroupCallPresentationRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    JoinGroupCallPresentationRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    JoinGroupCallPresentationRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    JoinGroupCallPresentationRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
