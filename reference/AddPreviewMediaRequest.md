# AddPreviewMediaRequest

Telegram API type AddPreviewMediaRequest

## Details

AddPreviewMediaRequest R6 class

Represents the AddPreviewMediaRequest TL request.

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

- [`AddPreviewMediaRequest$new()`](#method-AddPreviewMediaRequest-new)

- [`AddPreviewMediaRequest$resolve()`](#method-AddPreviewMediaRequest-resolve)

- [`AddPreviewMediaRequest$to_list()`](#method-AddPreviewMediaRequest-to_list)

- [`AddPreviewMediaRequest$to_bytes()`](#method-AddPreviewMediaRequest-to_bytes)

- [`AddPreviewMediaRequest$clone()`](#method-AddPreviewMediaRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize AddPreviewMediaRequest

#### Usage

    AddPreviewMediaRequest$new(bot, lang_code, media)

#### Arguments

- `bot`:

  TypeInputUser or identifier

- `lang_code`:

  character

- `media`:

  TypeInputMedia or object Resolve references (convert entities via
  client/utils)

  Resolves bot via client\$get_input_entity and utils\$get_input_user,
  resolves media via utils\$get_input_media if available.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    AddPreviewMediaRequest$resolve(client, utils)

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

    AddPreviewMediaRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    AddPreviewMediaRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AddPreviewMediaRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
