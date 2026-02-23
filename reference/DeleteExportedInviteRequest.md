# DeleteExportedInviteRequest

Telegram API type DeleteExportedInviteRequest

## Details

DeleteExportedInviteRequest R6 class

Request to delete an exported invite for a chatlist.

Serializes constructor id, chatlist bytes, then TL-string encoded slug.

## Public fields

- `chatlist`:

  Field.

- `slug`:

  Field.

## Methods

### Public methods

- [`DeleteExportedInviteRequest$new()`](#method-DeleteExportedInviteRequest-new)

- [`DeleteExportedInviteRequest$to_list()`](#method-DeleteExportedInviteRequest-to_list)

- [`DeleteExportedInviteRequest$bytes()`](#method-DeleteExportedInviteRequest-bytes)

- [`DeleteExportedInviteRequest$from_reader()`](#method-DeleteExportedInviteRequest-from_reader)

- [`DeleteExportedInviteRequest$clone()`](#method-DeleteExportedInviteRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize DeleteExportedInviteRequest

#### Usage

    DeleteExportedInviteRequest$new(chatlist = NULL, slug = NULL)

#### Arguments

- `chatlist`:

  Input chatlist object

- `slug`:

  Invite slug (string) Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    DeleteExportedInviteRequest$to_list()

#### Returns

A named list representation Serialize to raw bytes

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    DeleteExportedInviteRequest$bytes()

#### Returns

raw vector with serialized bytes

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    DeleteExportedInviteRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DeleteExportedInviteRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
