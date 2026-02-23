# CreateConferenceCallRequest

Telegram API type CreateConferenceCallRequest

## Details

CreateConferenceCallRequest R6 class

Represents CreateConferenceCallRequest TLRequest.

## Public fields

- `muted`:

  Field.

- `video_stopped`:

  Field.

- `join`:

  Field.

- `random_id`:

  Field.

- `public_key`:

  Field.

- `block`:

  Field.

- `params`:

  Field.

## Methods

### Public methods

- [`CreateConferenceCallRequest$new()`](#method-CreateConferenceCallRequest-new)

- [`CreateConferenceCallRequest$to_list()`](#method-CreateConferenceCallRequest-to_list)

- [`CreateConferenceCallRequest$bytes()`](#method-CreateConferenceCallRequest-bytes)

- [`CreateConferenceCallRequest$from_reader()`](#method-CreateConferenceCallRequest-from_reader)

- [`CreateConferenceCallRequest$clone()`](#method-CreateConferenceCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a CreateConferenceCallRequest

#### Usage

    CreateConferenceCallRequest$new(
      muted = NULL,
      video_stopped = NULL,
      join = NULL,
      random_id = NULL,
      public_key = NULL,
      block = NULL,
      params = NULL
    )

#### Arguments

- `muted`:

  Logical or NULL.

- `video_stopped`:

  Logical or NULL.

- `join`:

  Logical or NULL.

- `random_id`:

  Integer or NULL (if NULL, a random 32-bit signed int is generated).

- `public_key`:

  Integer or NULL.

- `block`:

  Raw bytes or NULL.

- `params`:

  DataJSON-like object or NULL.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    CreateConferenceCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation.

#### Usage

    CreateConferenceCallRequest$bytes()

#### Returns

raw vector (bytes)

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    CreateConferenceCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CreateConferenceCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
