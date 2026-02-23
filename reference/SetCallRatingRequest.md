# SetCallRatingRequest

Telegram API type SetCallRatingRequest

## Details

SetCallRatingRequest R6 class

Represents SetCallRatingRequest TLRequest.

## Public fields

- `peer`:

  Field.

- `rating`:

  Field.

- `comment`:

  Field.

- `user_initiative`:

  Field.

## Methods

### Public methods

- [`SetCallRatingRequest$new()`](#method-SetCallRatingRequest-new)

- [`SetCallRatingRequest$resolve()`](#method-SetCallRatingRequest-resolve)

- [`SetCallRatingRequest$to_list()`](#method-SetCallRatingRequest-to_list)

- [`SetCallRatingRequest$bytes()`](#method-SetCallRatingRequest-bytes)

- [`SetCallRatingRequest$from_reader()`](#method-SetCallRatingRequest-from_reader)

- [`SetCallRatingRequest$clone()`](#method-SetCallRatingRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a SetCallRatingRequest

#### Usage

    SetCallRatingRequest$new(peer, rating, comment, user_initiative = NULL)

#### Arguments

- `peer`:

  Input phone call object.

- `rating`:

  Integer rating value.

- `comment`:

  String comment.

- `user_initiative`:

  Logical or NULL.

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    SetCallRatingRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (passed to utils functions).

- `utils`:

  Utility object (not used here but kept for parity).

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    SetCallRatingRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes \`peer\$bytes()\`
exists.

#### Usage

    SetCallRatingRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    SetCallRatingRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetCallRatingRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
