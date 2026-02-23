# GetPopularAppBotsRequest

Telegram API type GetPopularAppBotsRequest

## Details

GetPopularAppBotsRequest R6 class

Represents the GetPopularAppBotsRequest TL request.

Each method is documented inline below.

## Public fields

- `offset`:

  Field.

- `limit`:

  Field.

## Methods

### Public methods

- [`GetPopularAppBotsRequest$new()`](#method-GetPopularAppBotsRequest-new)

- [`GetPopularAppBotsRequest$resolve()`](#method-GetPopularAppBotsRequest-resolve)

- [`GetPopularAppBotsRequest$to_list()`](#method-GetPopularAppBotsRequest-to_list)

- [`GetPopularAppBotsRequest$to_bytes()`](#method-GetPopularAppBotsRequest-to_bytes)

- [`GetPopularAppBotsRequest$clone()`](#method-GetPopularAppBotsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetPopularAppBotsRequest

#### Usage

    GetPopularAppBotsRequest$new(offset, limit)

#### Arguments

- `offset`:

  character offset

- `limit`:

  integer Resolve references (no-op for this request)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    GetPopularAppBotsRequest$resolve(client = NULL, utils = NULL)

#### Arguments

- `client`:

  unused

- `utils`:

  unused

#### Returns

invisible(self) Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetPopularAppBotsRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetPopularAppBotsRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetPopularAppBotsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
