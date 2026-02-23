# DeleteConferenceCallParticipantsRequest

Telegram API type DeleteConferenceCallParticipantsRequest

## Details

DeleteConferenceCallParticipantsRequest R6 class

Represents DeleteConferenceCallParticipantsRequest TLRequest.

## Public fields

- `call`:

  Field.

- `ids`:

  Field.

- `block`:

  Field.

- `only_left`:

  Field.

- `kick`:

  Field.

## Methods

### Public methods

- [`DeleteConferenceCallParticipantsRequest$new()`](#method-DeleteConferenceCallParticipantsRequest-new)

- [`DeleteConferenceCallParticipantsRequest$resolve()`](#method-DeleteConferenceCallParticipantsRequest-resolve)

- [`DeleteConferenceCallParticipantsRequest$to_list()`](#method-DeleteConferenceCallParticipantsRequest-to_list)

- [`DeleteConferenceCallParticipantsRequest$bytes()`](#method-DeleteConferenceCallParticipantsRequest-bytes)

- [`DeleteConferenceCallParticipantsRequest$from_reader()`](#method-DeleteConferenceCallParticipantsRequest-from_reader)

- [`DeleteConferenceCallParticipantsRequest$clone()`](#method-DeleteConferenceCallParticipantsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a DeleteConferenceCallParticipantsRequest

#### Usage

    DeleteConferenceCallParticipantsRequest$new(
      call,
      ids,
      block,
      only_left = NULL,
      kick = NULL
    )

#### Arguments

- `call`:

  Input group call object.

- `ids`:

  List of integers.

- `block`:

  Raw bytes.

- `only_left`:

  Logical or NULL.

- `kick`:

  Logical or NULL.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    DeleteConferenceCallParticipantsRequest$resolve(client, utils)

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

    DeleteConferenceCallParticipantsRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    DeleteConferenceCallParticipantsRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    DeleteConferenceCallParticipantsRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DeleteConferenceCallParticipantsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
