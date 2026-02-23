# CreateGroupCallRequest

Telegram API type CreateGroupCallRequest

## Details

CreateGroupCallRequest R6 class

Represents CreateGroupCallRequest TLRequest.

## Public fields

- `peer`:

  Field.

- `rtmp_stream`:

  Field.

- `random_id`:

  Field.

- `title`:

  Field.

- `schedule_date`:

  Field.

## Methods

### Public methods

- [`CreateGroupCallRequest$new()`](#method-CreateGroupCallRequest-new)

- [`CreateGroupCallRequest$resolve()`](#method-CreateGroupCallRequest-resolve)

- [`CreateGroupCallRequest$to_list()`](#method-CreateGroupCallRequest-to_list)

- [`CreateGroupCallRequest$bytes()`](#method-CreateGroupCallRequest-bytes)

- [`CreateGroupCallRequest$from_reader()`](#method-CreateGroupCallRequest-from_reader)

- [`CreateGroupCallRequest$clone()`](#method-CreateGroupCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a CreateGroupCallRequest

#### Usage

    CreateGroupCallRequest$new(
      peer,
      rtmp_stream = NULL,
      random_id = NULL,
      title = NULL,
      schedule_date = NULL
    )

#### Arguments

- `peer`:

  Input peer object.

- `rtmp_stream`:

  Logical or NULL.

- `random_id`:

  Integer or NULL (if NULL, a random 32-bit signed int is generated).

- `title`:

  String or NULL.

- `schedule_date`:

  Datetime or NULL.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    CreateGroupCallRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (passed to utils functions).

- `utils`:

  Utility object with get_input_peer method.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    CreateGroupCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    CreateGroupCallRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    CreateGroupCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CreateGroupCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
