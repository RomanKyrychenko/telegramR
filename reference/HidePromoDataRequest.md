# HidePromoDataRequest

Telegram API type HidePromoDataRequest

## Details

HidePromoDataRequest R6 class

Request to hide promo data for a peer.

## Public fields

- `peer`:

  Field.

## Methods

### Public methods

- [`HidePromoDataRequest$new()`](#method-HidePromoDataRequest-new)

- [`HidePromoDataRequest$resolve()`](#method-HidePromoDataRequest-resolve)

- [`HidePromoDataRequest$to_list()`](#method-HidePromoDataRequest-to_list)

- [`HidePromoDataRequest$to_bytes()`](#method-HidePromoDataRequest-to_bytes)

- [`HidePromoDataRequest$clone()`](#method-HidePromoDataRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize HidePromoDataRequest

#### Usage

    HidePromoDataRequest$new(peer = NULL)

#### Arguments

- `peer`:

  TLObject-like or raw Resolve peer using client and utils

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    HidePromoDataRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object providing get_input_entity()

- `utils`:

  utils providing get_input_peer() Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    HidePromoDataRequest$to_list()

#### Returns

list with \`\_\` discriminator and peer as list (if possible) Serialize
to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    HidePromoDataRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    HidePromoDataRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
