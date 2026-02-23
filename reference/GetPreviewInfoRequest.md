# GetPreviewInfoRequest

Telegram API type GetPreviewInfoRequest

## Details

GetPreviewInfoRequest R6 class

Represents the GetPreviewInfoRequest TL request.

Each method is documented inline below.

## Public fields

- `bot`:

  Field.

- `lang_code`:

  Field.

## Methods

### Public methods

- [`GetPreviewInfoRequest$new()`](#method-GetPreviewInfoRequest-new)

- [`GetPreviewInfoRequest$resolve()`](#method-GetPreviewInfoRequest-resolve)

- [`GetPreviewInfoRequest$to_list()`](#method-GetPreviewInfoRequest-to_list)

- [`GetPreviewInfoRequest$to_bytes()`](#method-GetPreviewInfoRequest-to_bytes)

- [`GetPreviewInfoRequest$clone()`](#method-GetPreviewInfoRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetPreviewInfoRequest

#### Usage

    GetPreviewInfoRequest$new(bot, lang_code)

#### Arguments

- `bot`:

  TypeInputUser or identifier

- `lang_code`:

  character Resolve references (convert entities via client/utils)

  Resolves bot using client\$get_input_entity and utils\$get_input_user.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    GetPreviewInfoRequest$resolve(client, utils)

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

    GetPreviewInfoRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetPreviewInfoRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetPreviewInfoRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
