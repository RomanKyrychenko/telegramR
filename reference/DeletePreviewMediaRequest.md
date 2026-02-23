# DeletePreviewMediaRequest

Telegram API type DeletePreviewMediaRequest

## Details

DeletePreviewMediaRequest R6 class

Represents the DeletePreviewMediaRequest TL request.

Each method is documented inline below.

## Public fields

- `bot`:

  Field.

- `lang_code`:

  Field.

- `media`:

  Field.

## Methods

### Public methods

- [`DeletePreviewMediaRequest$new()`](#method-DeletePreviewMediaRequest-new)

- [`DeletePreviewMediaRequest$resolve()`](#method-DeletePreviewMediaRequest-resolve)

- [`DeletePreviewMediaRequest$to_list()`](#method-DeletePreviewMediaRequest-to_list)

- [`DeletePreviewMediaRequest$to_bytes()`](#method-DeletePreviewMediaRequest-to_bytes)

- [`DeletePreviewMediaRequest$clone()`](#method-DeletePreviewMediaRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize DeletePreviewMediaRequest

#### Usage

    DeletePreviewMediaRequest$new(bot, lang_code, media)

#### Arguments

- `bot`:

  TypeInputUser or identifier

- `lang_code`:

  character

- `media`:

  list of TypeInputMedia or objects Resolve references (convert entities
  via client/utils)

  Resolves bot via client\$get_input_entity and utils\$get_input_user.
  Resolves each media entry via utils\$get_input_media.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    DeletePreviewMediaRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  utils with get_input_user and get_input_media

#### Returns

invisible(self) Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    DeletePreviewMediaRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    DeletePreviewMediaRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DeletePreviewMediaRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
