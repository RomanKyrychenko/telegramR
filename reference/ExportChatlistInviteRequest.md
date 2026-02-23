# ExportChatlistInviteRequest

Telegram API type ExportChatlistInviteRequest

## Details

ExportChatlistInviteRequest R6 class

Request to export an invite for a chatlist with a title and list of
peers.

Serializes constructor id, chatlist bytes, title (TL-string), then peers
vector.

## Public fields

- `chatlist`:

  Field.

- `title`:

  Field.

- `peers`:

  Field.

## Methods

### Public methods

- [`ExportChatlistInviteRequest$new()`](#method-ExportChatlistInviteRequest-new)

- [`ExportChatlistInviteRequest$resolve()`](#method-ExportChatlistInviteRequest-resolve)

- [`ExportChatlistInviteRequest$to_list()`](#method-ExportChatlistInviteRequest-to_list)

- [`ExportChatlistInviteRequest$bytes()`](#method-ExportChatlistInviteRequest-bytes)

- [`ExportChatlistInviteRequest$from_reader()`](#method-ExportChatlistInviteRequest-from_reader)

- [`ExportChatlistInviteRequest$clone()`](#method-ExportChatlistInviteRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize ExportChatlistInviteRequest

#### Usage

    ExportChatlistInviteRequest$new(chatlist = NULL, title = NULL, peers = NULL)

#### Arguments

- `chatlist`:

  Input chatlist object

- `title`:

  Invite title (string)

- `peers`:

  List of input peers Resolve peer entities to input peers

  Iterates over peers, resolves each via client and utils and replaces
  the peers field with input_peer objects.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    ExportChatlistInviteRequest$resolve(client, utils)

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

    ExportChatlistInviteRequest$to_list()

#### Returns

A named list representation Serialize to raw bytes

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ExportChatlistInviteRequest$bytes()

#### Returns

raw vector with serialized bytes

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ExportChatlistInviteRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ExportChatlistInviteRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
