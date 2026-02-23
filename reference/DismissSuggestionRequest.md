# DismissSuggestionRequest

Telegram API type DismissSuggestionRequest

## Details

DismissSuggestionRequest R6 class

Dismiss a suggestion for a peer with an associated suggestion string.

## Public fields

- `peer`:

  Field.

- `suggestion`:

  Field.

## Methods

### Public methods

- [`DismissSuggestionRequest$new()`](#method-DismissSuggestionRequest-new)

- [`DismissSuggestionRequest$resolve()`](#method-DismissSuggestionRequest-resolve)

- [`DismissSuggestionRequest$to_list()`](#method-DismissSuggestionRequest-to_list)

- [`DismissSuggestionRequest$to_bytes()`](#method-DismissSuggestionRequest-to_bytes)

- [`DismissSuggestionRequest$clone()`](#method-DismissSuggestionRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize DismissSuggestionRequest

#### Usage

    DismissSuggestionRequest$new(peer = NULL, suggestion = "")

#### Arguments

- `peer`:

  TLObject-like or raw

- `suggestion`:

  character Resolve peer using client and utils

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    DismissSuggestionRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object providing get_input_entity()

- `utils`:

  utils providing get_input_peer() Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    DismissSuggestionRequest$to_list()

#### Returns

list with \`\_\` discriminator, peer and suggestion Serialize to bytes
(raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    DismissSuggestionRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DismissSuggestionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
