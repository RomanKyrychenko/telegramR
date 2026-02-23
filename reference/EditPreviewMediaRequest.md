# EditPreviewMediaRequest

Telegram API type EditPreviewMediaRequest

## Details

EditPreviewMediaRequest R6 class

Represents the EditPreviewMediaRequest TL request.

Each method is documented inline below.

## Public fields

- `bot`:

  Field.

- `lang_code`:

  Field.

- `media`:

  Field.

- `new_media`:

  Field.

## Methods

### Public methods

- [`EditPreviewMediaRequest$new()`](#method-EditPreviewMediaRequest-new)

- [`EditPreviewMediaRequest$resolve()`](#method-EditPreviewMediaRequest-resolve)

- [`EditPreviewMediaRequest$to_list()`](#method-EditPreviewMediaRequest-to_list)

- [`EditPreviewMediaRequest$to_bytes()`](#method-EditPreviewMediaRequest-to_bytes)

- [`EditPreviewMediaRequest$clone()`](#method-EditPreviewMediaRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize EditPreviewMediaRequest

#### Usage

    EditPreviewMediaRequest$new(bot, lang_code, media, new_media)

#### Arguments

- `bot`:

  TypeInputUser or identifier

- `lang_code`:

  character

- `media`:

  TypeInputMedia or object

- `new_media`:

  TypeInputMedia or object Resolve references (convert entities via
  client/utils)

  Resolves bot via client\$get_input_entity and utils\$get_input_user;
  resolves media and new_media via utils\$get_input_media.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    EditPreviewMediaRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method (synchronous)

- `utils`:

  utils with get_input_user and get_input_media

#### Returns

invisible(self) Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    EditPreviewMediaRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    EditPreviewMediaRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EditPreviewMediaRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
