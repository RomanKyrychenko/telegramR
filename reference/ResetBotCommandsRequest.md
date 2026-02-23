# ResetBotCommandsRequest

Telegram API type ResetBotCommandsRequest

## Details

ResetBotCommandsRequest R6 class

Represents the ResetBotCommandsRequest TL request.

Each method is documented inline below.

## Public fields

- `scope`:

  Field.

- `lang_code`:

  Field.

## Methods

### Public methods

- [`ResetBotCommandsRequest$new()`](#method-ResetBotCommandsRequest-new)

- [`ResetBotCommandsRequest$resolve()`](#method-ResetBotCommandsRequest-resolve)

- [`ResetBotCommandsRequest$to_list()`](#method-ResetBotCommandsRequest-to_list)

- [`ResetBotCommandsRequest$to_bytes()`](#method-ResetBotCommandsRequest-to_bytes)

- [`ResetBotCommandsRequest$clone()`](#method-ResetBotCommandsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize ResetBotCommandsRequest

#### Usage

    ResetBotCommandsRequest$new(scope, lang_code)

#### Arguments

- `scope`:

  TypeBotCommandScope or object

- `lang_code`:

  character Resolve references (convert entities via client/utils)

  Some request types require resolving entities via client/utils. For
  this request there is no standard entity resolution required, so this
  is a no-op but kept for API consistency.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    ResetBotCommandsRequest$resolve(client = NULL, utils = NULL)

#### Arguments

- `client`:

  client (unused)

- `utils`:

  utils (unused) Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ResetBotCommandsRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    ResetBotCommandsRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ResetBotCommandsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
