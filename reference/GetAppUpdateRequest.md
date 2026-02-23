# GetAppUpdateRequest

Telegram API type GetAppUpdateRequest

## Details

GetAppUpdateRequest R6 class

Request to get app update info.

## Public fields

- `source`:

  Field.

## Methods

### Public methods

- [`GetAppUpdateRequest$new()`](#method-GetAppUpdateRequest-new)

- [`GetAppUpdateRequest$to_list()`](#method-GetAppUpdateRequest-to_list)

- [`GetAppUpdateRequest$to_bytes()`](#method-GetAppUpdateRequest-to_bytes)

- [`GetAppUpdateRequest$clone()`](#method-GetAppUpdateRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetAppUpdateRequest

#### Usage

    GetAppUpdateRequest$new(source = "")

#### Arguments

- `source`:

  character Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetAppUpdateRequest$to_list()

#### Returns

list with \`\_\` discriminator and source Serialize to bytes (raw
vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetAppUpdateRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetAppUpdateRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
