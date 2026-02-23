# JoinGroupCallRequest

Telegram API type JoinGroupCallRequest

## Details

JoinGroupCallRequest R6 class

Represents JoinGroupCallRequest TLRequest.

## Public fields

- `call`:

  Field.

- `join_as`:

  Field.

- `params`:

  Field.

- `muted`:

  Field.

- `video_stopped`:

  Field.

- `invite_hash`:

  Field.

- `public_key`:

  Field.

- `block`:

  Field.

## Methods

### Public methods

- [`JoinGroupCallRequest$new()`](#method-JoinGroupCallRequest-new)

- [`JoinGroupCallRequest$resolve()`](#method-JoinGroupCallRequest-resolve)

- [`JoinGroupCallRequest$to_list()`](#method-JoinGroupCallRequest-to_list)

- [`JoinGroupCallRequest$bytes()`](#method-JoinGroupCallRequest-bytes)

- [`JoinGroupCallRequest$from_reader()`](#method-JoinGroupCallRequest-from_reader)

- [`JoinGroupCallRequest$clone()`](#method-JoinGroupCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a JoinGroupCallRequest

#### Usage

    JoinGroupCallRequest$new(
      call,
      join_as,
      params,
      muted = NULL,
      video_stopped = NULL,
      invite_hash = NULL,
      public_key = NULL,
      block = NULL
    )

#### Arguments

- `call`:

  Input group call object.

- `join_as`:

  Input peer object to join as.

- `params`:

  DataJSON-like object.

- `muted`:

  Logical or NULL.

- `video_stopped`:

  Logical or NULL.

- `invite_hash`:

  Optional string or NULL.

- `public_key`:

  Optional integer (256-bit) or NULL.

- `block`:

  Optional raw vector or NULL.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    JoinGroupCallRequest$resolve(client, utils)

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

    JoinGroupCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    JoinGroupCallRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    JoinGroupCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    JoinGroupCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
