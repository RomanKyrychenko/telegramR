# GetBotInfoRequest

Telegram API type GetBotInfoRequest

## Details

GetBotInfoRequest R6 class

Represents the GetBotInfoRequest TL request.

Each method is documented inline below.

## Public fields

- `lang_code`:

  Field.

- `bot`:

  Field.

## Methods

### Public methods

- [`GetBotInfoRequest$new()`](#method-GetBotInfoRequest-new)

- [`GetBotInfoRequest$resolve()`](#method-GetBotInfoRequest-resolve)

- [`GetBotInfoRequest$to_list()`](#method-GetBotInfoRequest-to_list)

- [`GetBotInfoRequest$to_bytes()`](#method-GetBotInfoRequest-to_bytes)

- [`GetBotInfoRequest$clone()`](#method-GetBotInfoRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetBotInfoRequest

#### Usage

    GetBotInfoRequest$new(lang_code, bot = NULL)

#### Arguments

- `lang_code`:

  character

- `bot`:

  TypeInputUser or identifier (optional) Resolve references (convert
  entities via client/utils)

  If bot is provided, resolves it via client\$get_input_entity and
  utils\$get_input_user.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    GetBotInfoRequest$resolve(client, utils)

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

    GetBotInfoRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

Writes flags (uint32) indicating presence of bot, optional bot bytes,
then lang_code.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetBotInfoRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetBotInfoRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
