# GetAppConfigRequest

Telegram API type GetAppConfigRequest

## Details

GetAppConfigRequest R6 class

Request to get app configuration (possibly not modified).

## Methods

### Public methods

- [`GetAppConfigRequest$new()`](#method-GetAppConfigRequest-new)

- [`GetAppConfigRequest$to_list()`](#method-GetAppConfigRequest-to_list)

- [`GetAppConfigRequest$to_bytes()`](#method-GetAppConfigRequest-to_bytes)

- [`GetAppConfigRequest$clone()`](#method-GetAppConfigRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetAppConfigRequest

#### Usage

    GetAppConfigRequest$new(hash = 0L)

#### Arguments

- `hash`:

  integer Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetAppConfigRequest$to_list()

#### Returns

list with \`\_\` discriminator and hash Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetAppConfigRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetAppConfigRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
