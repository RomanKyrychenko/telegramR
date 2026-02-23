# GetBotMenuButtonRequest

Telegram API type GetBotMenuButtonRequest

## Details

GetBotMenuButtonRequest R6 class

Represents the GetBotMenuButtonRequest TL request.

Each method is documented inline below.

## Public fields

- `user_id`:

  Field.

## Methods

### Public methods

- [`GetBotMenuButtonRequest$new()`](#method-GetBotMenuButtonRequest-new)

- [`GetBotMenuButtonRequest$resolve()`](#method-GetBotMenuButtonRequest-resolve)

- [`GetBotMenuButtonRequest$to_list()`](#method-GetBotMenuButtonRequest-to_list)

- [`GetBotMenuButtonRequest$to_bytes()`](#method-GetBotMenuButtonRequest-to_bytes)

- [`GetBotMenuButtonRequest$clone()`](#method-GetBotMenuButtonRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetBotMenuButtonRequest

#### Usage

    GetBotMenuButtonRequest$new(user_id)

#### Arguments

- `user_id`:

  TypeInputUser or identifier Resolve references (convert entities via
  client/utils)

  Converts user_id via client\$get_input_entity and
  utils\$get_input_user.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    GetBotMenuButtonRequest$resolve(client, utils)

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

    GetBotMenuButtonRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetBotMenuButtonRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetBotMenuButtonRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
