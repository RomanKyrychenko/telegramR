# GetExportedInvitesRequest

Telegram API type GetExportedInvitesRequest

## Details

GetExportedInvitesRequest R6 class

Request to get exported invites for a chatlist.

Serializes the constructor id followed by chatlist bytes.

## Public fields

- `chatlist`:

  Field.

## Methods

### Public methods

- [`GetExportedInvitesRequest$new()`](#method-GetExportedInvitesRequest-new)

- [`GetExportedInvitesRequest$to_list()`](#method-GetExportedInvitesRequest-to_list)

- [`GetExportedInvitesRequest$bytes()`](#method-GetExportedInvitesRequest-bytes)

- [`GetExportedInvitesRequest$from_reader()`](#method-GetExportedInvitesRequest-from_reader)

- [`GetExportedInvitesRequest$clone()`](#method-GetExportedInvitesRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetExportedInvitesRequest

#### Usage

    GetExportedInvitesRequest$new(chatlist = NULL)

#### Arguments

- `chatlist`:

  Input chatlist object Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetExportedInvitesRequest$to_list()

#### Returns

A named list representation Serialize to raw bytes

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    GetExportedInvitesRequest$bytes()

#### Returns

raw vector with serialized bytes

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetExportedInvitesRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetExportedInvitesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
