# ReorderPreviewMediasRequest

Telegram API type ReorderPreviewMediasRequest

## Details

ReorderPreviewMediasRequest R6 class

Represents the ReorderPreviewMediasRequest TL request.

Each method is documented inline below.

## Public fields

- `bot`:

  Field.

- `lang_code`:

  Field.

- `order`:

  Field.

## Methods

### Public methods

- [`ReorderPreviewMediasRequest$new()`](#method-ReorderPreviewMediasRequest-new)

- [`ReorderPreviewMediasRequest$resolve()`](#method-ReorderPreviewMediasRequest-resolve)

- [`ReorderPreviewMediasRequest$to_list()`](#method-ReorderPreviewMediasRequest-to_list)

- [`ReorderPreviewMediasRequest$to_bytes()`](#method-ReorderPreviewMediasRequest-to_bytes)

- [`ReorderPreviewMediasRequest$clone()`](#method-ReorderPreviewMediasRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize ReorderPreviewMediasRequest

#### Usage

    ReorderPreviewMediasRequest$new(bot, lang_code, order)

#### Arguments

- `bot`:

  TypeInputUser or identifier

- `lang_code`:

  character

- `order`:

  list of TypeInputMedia or objects Resolve references (convert entities
  via client/utils)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    ReorderPreviewMediasRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  utils with get_input_user / get_input_media

#### Returns

invisible(self) Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ReorderPreviewMediasRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    ReorderPreviewMediasRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReorderPreviewMediasRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
