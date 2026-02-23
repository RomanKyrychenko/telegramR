# EditGroupCallParticipantRequest

Telegram API type EditGroupCallParticipantRequest

## Details

EditGroupCallParticipantRequest R6 class

Represents EditGroupCallParticipantRequest TLRequest.

## Public fields

- `call`:

  Field.

- `participant`:

  Field.

- `muted`:

  Field.

- `volume`:

  Field.

- `raise_hand`:

  Field.

- `video_stopped`:

  Field.

- `video_paused`:

  Field.

- `presentation_paused`:

  Field.

## Methods

### Public methods

- [`EditGroupCallParticipantRequest$new()`](#method-EditGroupCallParticipantRequest-new)

- [`EditGroupCallParticipantRequest$resolve()`](#method-EditGroupCallParticipantRequest-resolve)

- [`EditGroupCallParticipantRequest$to_list()`](#method-EditGroupCallParticipantRequest-to_list)

- [`EditGroupCallParticipantRequest$bytes()`](#method-EditGroupCallParticipantRequest-bytes)

- [`EditGroupCallParticipantRequest$from_reader()`](#method-EditGroupCallParticipantRequest-from_reader)

- [`EditGroupCallParticipantRequest$clone()`](#method-EditGroupCallParticipantRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize an EditGroupCallParticipantRequest

#### Usage

    EditGroupCallParticipantRequest$new(
      call,
      participant,
      muted = NULL,
      volume = NULL,
      raise_hand = NULL,
      video_stopped = NULL,
      video_paused = NULL,
      presentation_paused = NULL
    )

#### Arguments

- `call`:

  Input group call object.

- `participant`:

  Input peer object.

- `muted`:

  Logical or NULL.

- `volume`:

  Integer or NULL.

- `raise_hand`:

  Logical or NULL.

- `video_stopped`:

  Logical or NULL.

- `video_paused`:

  Logical or NULL.

- `presentation_paused`:

  Logical or NULL.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    EditGroupCallParticipantRequest$resolve(client, utils)

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

    EditGroupCallParticipantRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    EditGroupCallParticipantRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    EditGroupCallParticipantRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EditGroupCallParticipantRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
