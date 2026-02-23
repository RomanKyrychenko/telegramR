# GetPeerProfileColorsRequest

Telegram API type GetPeerProfileColorsRequest

## Details

GetPeerProfileColorsRequest R6 class

Request to get peer profile colors (possibly not modified).

## Public fields

- `type`:

  Field. Serialize to bytes (raw vector)

## Active bindings

- `type`:

  Field. Serialize to bytes (raw vector)

## Methods

### Public methods

- [`GetPeerProfileColorsRequest$new()`](#method-GetPeerProfileColorsRequest-new)

- [`GetPeerProfileColorsRequest$to_list()`](#method-GetPeerProfileColorsRequest-to_list)

- [`GetPeerProfileColorsRequest$to_bytes()`](#method-GetPeerProfileColorsRequest-to_bytes)

- [`GetPeerProfileColorsRequest$clone()`](#method-GetPeerProfileColorsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetPeerProfileColorsRequest

#### Usage

    GetPeerProfileColorsRequest$new(hash = 0L)

#### Arguments

- `hash`:

  integer Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetPeerProfileColorsRequest$to_list()

#### Returns

list with \`type\` discriminator and hash

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetPeerProfileColorsRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetPeerProfileColorsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
