# LeaveChatlistRequest

Telegram API type LeaveChatlistRequest

## Details

LeaveChatlistRequest R6 class

Request to leave a chatlist for specific peers.

## Public fields

- `chatlist`:

  Field.

- `peers`:

  Field.

## Methods

### Public methods

- [`LeaveChatlistRequest$new()`](#method-LeaveChatlistRequest-new)

- [`LeaveChatlistRequest$resolve()`](#method-LeaveChatlistRequest-resolve)

- [`LeaveChatlistRequest$to_list()`](#method-LeaveChatlistRequest-to_list)

- [`LeaveChatlistRequest$bytes()`](#method-LeaveChatlistRequest-bytes)

- [`LeaveChatlistRequest$from_reader()`](#method-LeaveChatlistRequest-from_reader)

- [`LeaveChatlistRequest$clone()`](#method-LeaveChatlistRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize LeaveChatlistRequest

#### Usage

    LeaveChatlistRequest$new(chatlist = NULL, peers = NULL)

#### Arguments

- `chatlist`:

  Input chatlist object

- `peers`:

  List of input peers Resolve peer entities to input peers

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    LeaveChatlistRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object that provides get_input_entity

- `utils`:

  Utilities that provide get_input_peer

#### Returns

Invisible self Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    LeaveChatlistRequest$to_list()

#### Returns

A named list representation Serialize to raw bytes

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    LeaveChatlistRequest$bytes()

#### Returns

raw vector with serialized bytes

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    LeaveChatlistRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LeaveChatlistRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
