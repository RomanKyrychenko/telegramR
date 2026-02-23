# CheckChatlistInviteRequest

Telegram API type CheckChatlistInviteRequest

## Details

CheckChatlistInviteRequest R6 class

Request to check a chatlist invite by slug.

Serializes constructor id followed by TL-string encoded slug.

## Public fields

- `slug`:

  Field.

## Methods

### Public methods

- [`CheckChatlistInviteRequest$new()`](#method-CheckChatlistInviteRequest-new)

- [`CheckChatlistInviteRequest$to_list()`](#method-CheckChatlistInviteRequest-to_list)

- [`CheckChatlistInviteRequest$bytes()`](#method-CheckChatlistInviteRequest-bytes)

- [`CheckChatlistInviteRequest$from_reader()`](#method-CheckChatlistInviteRequest-from_reader)

- [`CheckChatlistInviteRequest$clone()`](#method-CheckChatlistInviteRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize CheckChatlistInviteRequest

#### Usage

    CheckChatlistInviteRequest$new(slug = NULL)

#### Arguments

- `slug`:

  Invite slug (string) Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    CheckChatlistInviteRequest$to_list()

#### Returns

A named list representation Serialize to raw bytes

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    CheckChatlistInviteRequest$bytes()

#### Returns

raw vector with serialized bytes

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    CheckChatlistInviteRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CheckChatlistInviteRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
