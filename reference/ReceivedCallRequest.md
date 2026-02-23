# ReceivedCallRequest

Telegram API type ReceivedCallRequest

## Details

ReceivedCallRequest R6 class

Represents ReceivedCallRequest TLRequest.

## Public fields

- `peer`:

  Field.

## Methods

### Public methods

- [`ReceivedCallRequest$new()`](#method-ReceivedCallRequest-new)

- [`ReceivedCallRequest$resolve()`](#method-ReceivedCallRequest-resolve)

- [`ReceivedCallRequest$to_list()`](#method-ReceivedCallRequest-to_list)

- [`ReceivedCallRequest$bytes()`](#method-ReceivedCallRequest-bytes)

- [`ReceivedCallRequest$from_reader()`](#method-ReceivedCallRequest-from_reader)

- [`ReceivedCallRequest$clone()`](#method-ReceivedCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a ReceivedCallRequest

#### Usage

    ReceivedCallRequest$new(peer)

#### Arguments

- `peer`:

  Input phone call object.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

No-op kept for API parity.

#### Usage

    ReceivedCallRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (unused).

- `utils`:

  Utility object (unused).

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    ReceivedCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes \`peer\$bytes()\`
exists.

#### Usage

    ReceivedCallRequest$bytes()

#### Returns

raw vector (bytes). If dependent object doesn't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ReceivedCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReceivedCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
