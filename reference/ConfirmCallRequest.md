# ConfirmCallRequest

Telegram API type ConfirmCallRequest

## Details

ConfirmCallRequest R6 class

Represents ConfirmCallRequest TLRequest.

## Public fields

- `peer`:

  Field.

- `g_a`:

  Field.

- `key_fingerprint`:

  Field.

- `protocol`:

  Field.

## Methods

### Public methods

- [`ConfirmCallRequest$new()`](#method-ConfirmCallRequest-new)

- [`ConfirmCallRequest$to_list()`](#method-ConfirmCallRequest-to_list)

- [`ConfirmCallRequest$bytes()`](#method-ConfirmCallRequest-bytes)

- [`ConfirmCallRequest$from_reader()`](#method-ConfirmCallRequest-from_reader)

- [`ConfirmCallRequest$clone()`](#method-ConfirmCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a ConfirmCallRequest

#### Usage

    ConfirmCallRequest$new(peer, g_a, key_fingerprint, protocol)

#### Arguments

- `peer`:

  Input phone call object.

- `g_a`:

  Raw bytes.

- `key_fingerprint`:

  Integer key fingerprint.

- `protocol`:

  Protocol object.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    ConfirmCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    ConfirmCallRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ConfirmCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ConfirmCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
