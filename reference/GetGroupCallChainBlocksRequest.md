# GetGroupCallChainBlocksRequest

Telegram API type GetGroupCallChainBlocksRequest

## Details

GetGroupCallChainBlocksRequest R6 class

Represents GetGroupCallChainBlocksRequest TLRequest.

## Public fields

- `call`:

  Field.

- `sub_chain_id`:

  Field.

- `offset`:

  Field.

- `limit`:

  Field.

## Methods

### Public methods

- [`GetGroupCallChainBlocksRequest$new()`](#method-GetGroupCallChainBlocksRequest-new)

- [`GetGroupCallChainBlocksRequest$resolve()`](#method-GetGroupCallChainBlocksRequest-resolve)

- [`GetGroupCallChainBlocksRequest$to_list()`](#method-GetGroupCallChainBlocksRequest-to_list)

- [`GetGroupCallChainBlocksRequest$bytes()`](#method-GetGroupCallChainBlocksRequest-bytes)

- [`GetGroupCallChainBlocksRequest$from_reader()`](#method-GetGroupCallChainBlocksRequest-from_reader)

- [`GetGroupCallChainBlocksRequest$clone()`](#method-GetGroupCallChainBlocksRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a GetGroupCallChainBlocksRequest

#### Usage

    GetGroupCallChainBlocksRequest$new(call, sub_chain_id, offset, limit)

#### Arguments

- `call`:

  Input group call object.

- `sub_chain_id`:

  Integer sub chain id.

- `offset`:

  Integer offset.

- `limit`:

  Integer limit.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    GetGroupCallChainBlocksRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (passed to utils functions).

- `utils`:

  Utility object with get_input_group_call method.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    GetGroupCallChainBlocksRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    GetGroupCallChainBlocksRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetGroupCallChainBlocksRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetGroupCallChainBlocksRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
