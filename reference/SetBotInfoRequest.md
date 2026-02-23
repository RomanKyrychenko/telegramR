# SetBotInfoRequest

Telegram API type SetBotInfoRequest

## Details

SetBotInfoRequest R6 class

Represents the SetBotInfoRequest TL request.

Each method is documented inline below.

## Public fields

- `lang_code`:

  Field.

- `bot`:

  Field.

- `name`:

  Field.

- `about`:

  Field.

- `description`:

  Field.

## Methods

### Public methods

- [`SetBotInfoRequest$new()`](#method-SetBotInfoRequest-new)

- [`SetBotInfoRequest$resolve()`](#method-SetBotInfoRequest-resolve)

- [`SetBotInfoRequest$to_list()`](#method-SetBotInfoRequest-to_list)

- [`SetBotInfoRequest$to_bytes()`](#method-SetBotInfoRequest-to_bytes)

- [`SetBotInfoRequest$clone()`](#method-SetBotInfoRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize SetBotInfoRequest

#### Usage

    SetBotInfoRequest$new(
      lang_code,
      bot = NULL,
      name = NULL,
      about = NULL,
      description = NULL
    )

#### Arguments

- `lang_code`:

  character

- `bot`:

  TypeInputUser or identifier (optional)

- `name`:

  character (optional)

- `about`:

  character (optional)

- `description`:

  character (optional) Resolve references (convert entities via
  client/utils)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    SetBotInfoRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  utils with get_input_user Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    SetBotInfoRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    SetBotInfoRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetBotInfoRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
