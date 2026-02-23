# GetGroupCallStreamRtmpUrlRequest

Telegram API type GetGroupCallStreamRtmpUrlRequest

## Details

GetGroupCallStreamRtmpUrlRequest R6 class

Represents GetGroupCallStreamRtmpUrlRequest TLRequest.

## Public fields

- `peer`:

  Field.

- `revoke`:

  Field.

## Methods

### Public methods

- [`GetGroupCallStreamRtmpUrlRequest$new()`](#method-GetGroupCallStreamRtmpUrlRequest-new)

- [`GetGroupCallStreamRtmpUrlRequest$resolve()`](#method-GetGroupCallStreamRtmpUrlRequest-resolve)

- [`GetGroupCallStreamRtmpUrlRequest$to_list()`](#method-GetGroupCallStreamRtmpUrlRequest-to_list)

- [`GetGroupCallStreamRtmpUrlRequest$bytes()`](#method-GetGroupCallStreamRtmpUrlRequest-bytes)

- [`GetGroupCallStreamRtmpUrlRequest$from_reader()`](#method-GetGroupCallStreamRtmpUrlRequest-from_reader)

- [`GetGroupCallStreamRtmpUrlRequest$clone()`](#method-GetGroupCallStreamRtmpUrlRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a GetGroupCallStreamRtmpUrlRequest

#### Usage

    GetGroupCallStreamRtmpUrlRequest$new(peer, revoke)

#### Arguments

- `peer`:

  Input peer object.

- `revoke`:

  Logical.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    GetGroupCallStreamRtmpUrlRequest$resolve(client, utils)

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

    GetGroupCallStreamRtmpUrlRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    GetGroupCallStreamRtmpUrlRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetGroupCallStreamRtmpUrlRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetGroupCallStreamRtmpUrlRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
