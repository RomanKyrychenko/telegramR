# GetRecentMeUrlsRequest

Telegram API type GetRecentMeUrlsRequest

## Details

GetRecentMeUrlsRequest R6 class

Request to get recent "me" URLs with a referer string.

## Public fields

- `referer`:

  Field.

- `type`:

  Field. Serialize to bytes (raw vector)

## Active bindings

- `type`:

  Field. Serialize to bytes (raw vector)

## Methods

### Public methods

- [`GetRecentMeUrlsRequest$new()`](#method-GetRecentMeUrlsRequest-new)

- [`GetRecentMeUrlsRequest$to_list()`](#method-GetRecentMeUrlsRequest-to_list)

- [`GetRecentMeUrlsRequest$to_bytes()`](#method-GetRecentMeUrlsRequest-to_bytes)

- [`GetRecentMeUrlsRequest$clone()`](#method-GetRecentMeUrlsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetRecentMeUrlsRequest

#### Usage

    GetRecentMeUrlsRequest$new(referer = "")

#### Arguments

- `referer`:

  character Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetRecentMeUrlsRequest$to_list()

#### Returns

list with type discriminator and referer

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetRecentMeUrlsRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetRecentMeUrlsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
