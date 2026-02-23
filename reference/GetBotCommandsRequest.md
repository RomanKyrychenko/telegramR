# GetBotCommandsRequest

Telegram API type GetBotCommandsRequest

## Details

GetBotCommandsRequest R6 class

Represents the GetBotCommandsRequest TL request.

Each method is documented inline below.

## Public fields

- `scope`:

  Field.

- `lang_code`:

  Field.

## Methods

### Public methods

- [`GetBotCommandsRequest$new()`](#method-GetBotCommandsRequest-new)

- [`GetBotCommandsRequest$to_list()`](#method-GetBotCommandsRequest-to_list)

- [`GetBotCommandsRequest$to_bytes()`](#method-GetBotCommandsRequest-to_bytes)

- [`GetBotCommandsRequest$clone()`](#method-GetBotCommandsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetBotCommandsRequest

#### Usage

    GetBotCommandsRequest$new(scope, lang_code)

#### Arguments

- `scope`:

  TypeBotCommandScope or object

- `lang_code`:

  character Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetBotCommandsRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetBotCommandsRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetBotCommandsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
