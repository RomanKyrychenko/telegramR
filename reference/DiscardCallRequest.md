# DiscardCallRequest

Telegram API type DiscardCallRequest

## Details

DiscardCallRequest R6 class

Represents DiscardCallRequest TLRequest.

## Public fields

- `peer`:

  Field.

- `duration`:

  Field.

- `reason`:

  Field.

- `connection_id`:

  Field.

- `video`:

  Field.

## Methods

### Public methods

- [`DiscardCallRequest$new()`](#method-DiscardCallRequest-new)

- [`DiscardCallRequest$to_list()`](#method-DiscardCallRequest-to_list)

- [`DiscardCallRequest$bytes()`](#method-DiscardCallRequest-bytes)

- [`DiscardCallRequest$from_reader()`](#method-DiscardCallRequest-from_reader)

- [`DiscardCallRequest$clone()`](#method-DiscardCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a DiscardCallRequest

#### Usage

    DiscardCallRequest$new(peer, duration, reason, connection_id, video = NULL)

#### Arguments

- `peer`:

  Input phone call object.

- `duration`:

  Integer duration.

- `reason`:

  Phone call discard reason object.

- `connection_id`:

  Integer connection id.

- `video`:

  Logical or NULL.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    DiscardCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    DiscardCallRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    DiscardCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DiscardCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
