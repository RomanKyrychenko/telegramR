# GetPeerColorsRequest

Telegram API type GetPeerColorsRequest

## Details

GetPeerColorsRequest R6 class

Request to get peer colors (possibly not modified).

## Public fields

- `type`:

  Field. Serialize to bytes (raw vector)

## Active bindings

- `type`:

  Field. Serialize to bytes (raw vector)

## Methods

### Public methods

- [`GetPeerColorsRequest$new()`](#method-GetPeerColorsRequest-new)

- [`GetPeerColorsRequest$to_list()`](#method-GetPeerColorsRequest-to_list)

- [`GetPeerColorsRequest$to_bytes()`](#method-GetPeerColorsRequest-to_bytes)

- [`GetPeerColorsRequest$clone()`](#method-GetPeerColorsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetPeerColorsRequest

#### Usage

    GetPeerColorsRequest$new(hash = 0L)

#### Arguments

- `hash`:

  integer Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetPeerColorsRequest$to_list()

#### Returns

list with \`type\` discriminator and hash

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetPeerColorsRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetPeerColorsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
