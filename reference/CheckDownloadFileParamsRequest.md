# CheckDownloadFileParamsRequest

Telegram API type CheckDownloadFileParamsRequest

## Details

CheckDownloadFileParamsRequest R6 class

Represents the CheckDownloadFileParamsRequest TL request.

Each method is documented inline below.

## Public fields

- `bot`:

  Field.

- `file_name`:

  Field.

- `url`:

  Field.

## Methods

### Public methods

- [`CheckDownloadFileParamsRequest$new()`](#method-CheckDownloadFileParamsRequest-new)

- [`CheckDownloadFileParamsRequest$resolve()`](#method-CheckDownloadFileParamsRequest-resolve)

- [`CheckDownloadFileParamsRequest$to_list()`](#method-CheckDownloadFileParamsRequest-to_list)

- [`CheckDownloadFileParamsRequest$to_bytes()`](#method-CheckDownloadFileParamsRequest-to_bytes)

- [`CheckDownloadFileParamsRequest$clone()`](#method-CheckDownloadFileParamsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize CheckDownloadFileParamsRequest

#### Usage

    CheckDownloadFileParamsRequest$new(bot, file_name, url)

#### Arguments

- `bot`:

  TypeInputUser or identifier

- `file_name`:

  character

- `url`:

  character Resolve references (convert entities via client/utils)

  Resolves bot via client\$get_input_entity and utils\$get_input_user.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    CheckDownloadFileParamsRequest$resolve(client, utils)

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

    CheckDownloadFileParamsRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    CheckDownloadFileParamsRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CheckDownloadFileParamsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
