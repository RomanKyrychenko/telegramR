# JoinChatlistInviteRequest

Telegram API type JoinChatlistInviteRequest

## Details

JoinChatlistInviteRequest R6 class

Request to join a chatlist invite (by slug) with specific peers.

Serializes constructor id, slug (TL-string encoding), then peers vector.

## Public fields

- `slug`:

  Field.

- `peers`:

  Field.

## Methods

### Public methods

- [`JoinChatlistInviteRequest$new()`](#method-JoinChatlistInviteRequest-new)

- [`JoinChatlistInviteRequest$resolve()`](#method-JoinChatlistInviteRequest-resolve)

- [`JoinChatlistInviteRequest$to_list()`](#method-JoinChatlistInviteRequest-to_list)

- [`JoinChatlistInviteRequest$bytes()`](#method-JoinChatlistInviteRequest-bytes)

- [`JoinChatlistInviteRequest$from_reader()`](#method-JoinChatlistInviteRequest-from_reader)

- [`JoinChatlistInviteRequest$clone()`](#method-JoinChatlistInviteRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize JoinChatlistInviteRequest

#### Usage

    JoinChatlistInviteRequest$new(slug = NULL, peers = NULL)

#### Arguments

- `slug`:

  Invite slug string

- `peers`:

  List of input peers Resolve peer entities to input peers

  Iterates over peers, resolves each via client and utils and replaces
  the peers field with input_peer objects.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    JoinChatlistInviteRequest$resolve(client, utils)

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

    JoinChatlistInviteRequest$to_list()

#### Returns

A named list representation Serialize to raw bytes

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    JoinChatlistInviteRequest$bytes()

#### Returns

raw vector with serialized bytes

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    JoinChatlistInviteRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    JoinChatlistInviteRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
