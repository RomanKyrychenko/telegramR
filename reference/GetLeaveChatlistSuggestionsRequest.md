# GetLeaveChatlistSuggestionsRequest

Telegram API type GetLeaveChatlistSuggestionsRequest

## Details

GetLeaveChatlistSuggestionsRequest R6 class

Request to get suggestions of peers to leave from a chatlist.

Serializes the constructor id followed by chatlist bytes.

## Public fields

- `chatlist`:

  Field.

## Methods

### Public methods

- [`GetLeaveChatlistSuggestionsRequest$new()`](#method-GetLeaveChatlistSuggestionsRequest-new)

- [`GetLeaveChatlistSuggestionsRequest$to_list()`](#method-GetLeaveChatlistSuggestionsRequest-to_list)

- [`GetLeaveChatlistSuggestionsRequest$bytes()`](#method-GetLeaveChatlistSuggestionsRequest-bytes)

- [`GetLeaveChatlistSuggestionsRequest$from_reader()`](#method-GetLeaveChatlistSuggestionsRequest-from_reader)

- [`GetLeaveChatlistSuggestionsRequest$clone()`](#method-GetLeaveChatlistSuggestionsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetLeaveChatlistSuggestionsRequest

#### Usage

    GetLeaveChatlistSuggestionsRequest$new(chatlist = NULL)

#### Arguments

- `chatlist`:

  Input chatlist object Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetLeaveChatlistSuggestionsRequest$to_list()

#### Returns

A named list representation Serialize to raw bytes

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    GetLeaveChatlistSuggestionsRequest$bytes()

#### Returns

raw vector with serialized bytes

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetLeaveChatlistSuggestionsRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetLeaveChatlistSuggestionsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
