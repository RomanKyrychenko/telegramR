# HideChatlistUpdatesRequest

Telegram API type HideChatlistUpdatesRequest

## Details

HideChatlistUpdatesRequest R6 class

Request to hide updates for a chatlist.

Serializes the constructor id followed by chatlist bytes.

## Public fields

- `chatlist`:

  Field.

## Methods

### Public methods

- [`HideChatlistUpdatesRequest$new()`](#method-HideChatlistUpdatesRequest-new)

- [`HideChatlistUpdatesRequest$to_list()`](#method-HideChatlistUpdatesRequest-to_list)

- [`HideChatlistUpdatesRequest$bytes()`](#method-HideChatlistUpdatesRequest-bytes)

- [`HideChatlistUpdatesRequest$from_reader()`](#method-HideChatlistUpdatesRequest-from_reader)

- [`HideChatlistUpdatesRequest$clone()`](#method-HideChatlistUpdatesRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize HideChatlistUpdatesRequest

#### Usage

    HideChatlistUpdatesRequest$new(chatlist = NULL)

#### Arguments

- `chatlist`:

  Input chatlist object Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    HideChatlistUpdatesRequest$to_list()

#### Returns

A named list representation Serialize to raw bytes

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    HideChatlistUpdatesRequest$bytes()

#### Returns

raw vector with serialized bytes

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    HideChatlistUpdatesRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    HideChatlistUpdatesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
