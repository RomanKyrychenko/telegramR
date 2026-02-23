# SendSignalingDataRequest

Telegram API type SendSignalingDataRequest

## Details

SendSignalingDataRequest R6 class

Represents SendSignalingDataRequest TLRequest.

## Public fields

- `peer`:

  Field.

- `data`:

  Field.

## Methods

### Public methods

- [`SendSignalingDataRequest$new()`](#method-SendSignalingDataRequest-new)

- [`SendSignalingDataRequest$to_list()`](#method-SendSignalingDataRequest-to_list)

- [`SendSignalingDataRequest$bytes()`](#method-SendSignalingDataRequest-bytes)

- [`SendSignalingDataRequest$from_reader()`](#method-SendSignalingDataRequest-from_reader)

- [`SendSignalingDataRequest$clone()`](#method-SendSignalingDataRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a SendSignalingDataRequest

#### Usage

    SendSignalingDataRequest$new(peer, data)

#### Arguments

- `peer`:

  Input phone call object.

- `data`:

  Raw vector containing bytes to send.

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    SendSignalingDataRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes \`peer\$bytes()\`
exists.

#### Usage

    SendSignalingDataRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    SendSignalingDataRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SendSignalingDataRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
