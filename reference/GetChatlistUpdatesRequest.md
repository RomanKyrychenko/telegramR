# GetChatlistUpdatesRequest

Telegram API type GetChatlistUpdatesRequest

## Details

GetChatlistUpdatesRequest R6 class

Request to get updates for a chatlist.

Serializes the constructor id followed by chatlist bytes.

## Public fields

- `chatlist`:

  Field.

## Methods

### Public methods

- [`GetChatlistUpdatesRequest$new()`](#method-GetChatlistUpdatesRequest-new)

- [`GetChatlistUpdatesRequest$to_list()`](#method-GetChatlistUpdatesRequest-to_list)

- [`GetChatlistUpdatesRequest$bytes()`](#method-GetChatlistUpdatesRequest-bytes)

- [`GetChatlistUpdatesRequest$from_reader()`](#method-GetChatlistUpdatesRequest-from_reader)

- [`GetChatlistUpdatesRequest$clone()`](#method-GetChatlistUpdatesRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetChatlistUpdatesRequest

#### Usage

    GetChatlistUpdatesRequest$new(chatlist = NULL)

#### Arguments

- `chatlist`:

  Input chatlist object Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetChatlistUpdatesRequest$to_list()

#### Returns

A named list representation Serialize to raw bytes

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    GetChatlistUpdatesRequest$bytes()

#### Returns

raw vector with serialized bytes

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetChatlistUpdatesRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetChatlistUpdatesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
