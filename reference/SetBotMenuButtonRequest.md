# SetBotMenuButtonRequest

Telegram API type SetBotMenuButtonRequest

## Details

SetBotMenuButtonRequest R6 class

Represents the SetBotMenuButtonRequest TL request.

Each method is documented inline below.

## Public fields

- `user_id`:

  Field.

- `button`:

  Field.

## Methods

### Public methods

- [`SetBotMenuButtonRequest$new()`](#method-SetBotMenuButtonRequest-new)

- [`SetBotMenuButtonRequest$resolve()`](#method-SetBotMenuButtonRequest-resolve)

- [`SetBotMenuButtonRequest$to_list()`](#method-SetBotMenuButtonRequest-to_list)

- [`SetBotMenuButtonRequest$to_bytes()`](#method-SetBotMenuButtonRequest-to_bytes)

- [`SetBotMenuButtonRequest$clone()`](#method-SetBotMenuButtonRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize SetBotMenuButtonRequest

#### Usage

    SetBotMenuButtonRequest$new(user_id, button)

#### Arguments

- `user_id`:

  TypeInputUser or identifier

- `button`:

  TypeBotMenuButton or object Resolve references (convert entities via
  client/utils)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    SetBotMenuButtonRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  utils with get_input_user Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    SetBotMenuButtonRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    SetBotMenuButtonRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetBotMenuButtonRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
