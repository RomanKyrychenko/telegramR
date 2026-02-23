# AcceptCallRequest

Telegram API type AcceptCallRequest

## Details

AcceptCallRequest R6 class

Represents AcceptCallRequest TLRequest.

## Public fields

- `peer`:

  Field.

- `g_b`:

  Field.

- `protocol`:

  Field.

## Methods

### Public methods

- [`AcceptCallRequest$new()`](#method-AcceptCallRequest-new)

- [`AcceptCallRequest$to_list()`](#method-AcceptCallRequest-to_list)

- [`AcceptCallRequest$bytes()`](#method-AcceptCallRequest-bytes)

- [`AcceptCallRequest$from_reader()`](#method-AcceptCallRequest-from_reader)

- [`AcceptCallRequest$clone()`](#method-AcceptCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize an AcceptCallRequest

#### Usage

    AcceptCallRequest$new(peer, g_b, protocol)

#### Arguments

- `peer`:

  Input phone call object.

- `g_b`:

  Raw bytes.

- `protocol`:

  Protocol object.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    AcceptCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    AcceptCallRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    AcceptCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AcceptCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
