# GetGroupParticipantsRequest

Telegram API type GetGroupParticipantsRequest

## Details

GetGroupParticipantsRequest R6 class

Represents GetGroupParticipantsRequest TLRequest.

## Public fields

- `call`:

  Field.

- `ids`:

  Field.

- `sources`:

  Field.

- `offset`:

  Field.

- `limit`:

  Field.

## Methods

### Public methods

- [`GetGroupParticipantsRequest$new()`](#method-GetGroupParticipantsRequest-new)

- [`GetGroupParticipantsRequest$resolve()`](#method-GetGroupParticipantsRequest-resolve)

- [`GetGroupParticipantsRequest$to_list()`](#method-GetGroupParticipantsRequest-to_list)

- [`GetGroupParticipantsRequest$bytes()`](#method-GetGroupParticipantsRequest-bytes)

- [`GetGroupParticipantsRequest$from_reader()`](#method-GetGroupParticipantsRequest-from_reader)

- [`GetGroupParticipantsRequest$clone()`](#method-GetGroupParticipantsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a GetGroupParticipantsRequest

#### Usage

    GetGroupParticipantsRequest$new(call, ids, sources, offset, limit)

#### Arguments

- `call`:

  Input group call object.

- `ids`:

  List of input peer objects.

- `sources`:

  List of integers.

- `offset`:

  String.

- `limit`:

  Integer.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    GetGroupParticipantsRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (passed to utils functions).

- `utils`:

  Utility object with get_input_group_call and get_input_peer methods.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    GetGroupParticipantsRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    GetGroupParticipantsRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetGroupParticipantsRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetGroupParticipantsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
