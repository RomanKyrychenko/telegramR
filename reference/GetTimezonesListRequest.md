# GetTimezonesListRequest

Telegram API type GetTimezonesListRequest

## Details

GetTimezonesListRequest R6 class

Request to get timezones list (possibly not modified).

## Public fields

- `type`:

  Field. Serialize to bytes (raw vector)

## Active bindings

- `type`:

  Field. Serialize to bytes (raw vector)

## Methods

### Public methods

- [`GetTimezonesListRequest$new()`](#method-GetTimezonesListRequest-new)

- [`GetTimezonesListRequest$to_list()`](#method-GetTimezonesListRequest-to_list)

- [`GetTimezonesListRequest$to_bytes()`](#method-GetTimezonesListRequest-to_bytes)

- [`GetTimezonesListRequest$clone()`](#method-GetTimezonesListRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetTimezonesListRequest

#### Usage

    GetTimezonesListRequest$new(hash = 0L)

#### Arguments

- `hash`:

  integer Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetTimezonesListRequest$to_list()

#### Returns

list with \`type\` discriminator and hash

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetTimezonesListRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetTimezonesListRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
