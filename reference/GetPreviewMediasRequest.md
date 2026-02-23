# GetPreviewMediasRequest

Telegram API type GetPreviewMediasRequest

## Details

GetPreviewMediasRequest R6 class

Represents the GetPreviewMediasRequest TL request.

Each method is documented inline below.

## Public fields

- `bot`:

  Field.

## Methods

### Public methods

- [`GetPreviewMediasRequest$new()`](#method-GetPreviewMediasRequest-new)

- [`GetPreviewMediasRequest$resolve()`](#method-GetPreviewMediasRequest-resolve)

- [`GetPreviewMediasRequest$to_list()`](#method-GetPreviewMediasRequest-to_list)

- [`GetPreviewMediasRequest$to_bytes()`](#method-GetPreviewMediasRequest-to_bytes)

- [`GetPreviewMediasRequest$clone()`](#method-GetPreviewMediasRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetPreviewMediasRequest

#### Usage

    GetPreviewMediasRequest$new(bot)

#### Arguments

- `bot`:

  TypeInputUser or identifier Resolve references (convert entities via
  client/utils)

  Uses client\$get_input_entity and utils\$get_input_user to convert
  bot.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    GetPreviewMediasRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  utils with get_input_user

#### Returns

invisible(self) Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetPreviewMediasRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetPreviewMediasRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetPreviewMediasRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
