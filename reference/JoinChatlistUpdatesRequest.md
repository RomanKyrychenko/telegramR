# JoinChatlistUpdatesRequest

Telegram API type JoinChatlistUpdatesRequest

## Details

JoinChatlistUpdatesRequest R6 class

Request to join a chatlist with specific peers.

## Public fields

- `chatlist`:

  Field.

- `peers`:

  Field.

## Methods

### Public methods

- [`JoinChatlistUpdatesRequest$new()`](#method-JoinChatlistUpdatesRequest-new)

- [`JoinChatlistUpdatesRequest$resolve()`](#method-JoinChatlistUpdatesRequest-resolve)

- [`JoinChatlistUpdatesRequest$to_list()`](#method-JoinChatlistUpdatesRequest-to_list)

- [`JoinChatlistUpdatesRequest$bytes()`](#method-JoinChatlistUpdatesRequest-bytes)

- [`JoinChatlistUpdatesRequest$from_reader()`](#method-JoinChatlistUpdatesRequest-from_reader)

- [`JoinChatlistUpdatesRequest$clone()`](#method-JoinChatlistUpdatesRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize JoinChatlistUpdatesRequest

#### Usage

    JoinChatlistUpdatesRequest$new(chatlist = NULL, peers = NULL)

#### Arguments

- `chatlist`:

  Input chatlist object

- `peers`:

  List of input peers Resolve peer entities to input peers

  Iterates over peers, resolves each via client and utils and replaces
  the peers field with input_peer objects.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    JoinChatlistUpdatesRequest$resolve(client, utils)

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

    JoinChatlistUpdatesRequest$to_list()

#### Returns

A named list representation Serialize to raw bytes

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    JoinChatlistUpdatesRequest$bytes()

#### Returns

raw vector with serialized bytes

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    JoinChatlistUpdatesRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    JoinChatlistUpdatesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
