# SetBotCommandsRequest

Telegram API type SetBotCommandsRequest

## Details

SetBotCommandsRequest R6 class

Represents the SetBotCommandsRequest TL request.

Each method is documented inline below.

## Public fields

- `scope`:

  Field.

- `lang_code`:

  Field.

- `commands`:

  Field.

## Methods

### Public methods

- [`SetBotCommandsRequest$new()`](#method-SetBotCommandsRequest-new)

- [`SetBotCommandsRequest$resolve()`](#method-SetBotCommandsRequest-resolve)

- [`SetBotCommandsRequest$to_list()`](#method-SetBotCommandsRequest-to_list)

- [`SetBotCommandsRequest$to_bytes()`](#method-SetBotCommandsRequest-to_bytes)

- [`SetBotCommandsRequest$clone()`](#method-SetBotCommandsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize SetBotCommandsRequest

#### Usage

    SetBotCommandsRequest$new(scope, lang_code, commands)

#### Arguments

- `scope`:

  TypeBotCommandScope or object

- `lang_code`:

  character

- `commands`:

  list of TypeBotCommand or objects Resolve references (convert entities
  via client/utils)

  Some request types require resolving entities via client/utils. For
  this request there is no standard entity resolution required, so this
  is a no-op but kept for API consistency.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    SetBotCommandsRequest$resolve(client = NULL, utils = NULL)

#### Arguments

- `client`:

  client (unused)

- `utils`:

  utils (unused) Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    SetBotCommandsRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    SetBotCommandsRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetBotCommandsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
