# AllowSendMessageRequest

Telegram API type AllowSendMessageRequest

## Details

AllowSendMessageRequest R6 class

Represents the AllowSendMessageRequest TL request.

Each method is documented inline below.

## Public fields

- `bot`:

  Field.

## Methods

### Public methods

- [`AllowSendMessageRequest$new()`](#method-AllowSendMessageRequest-new)

- [`AllowSendMessageRequest$resolve()`](#method-AllowSendMessageRequest-resolve)

- [`AllowSendMessageRequest$to_list()`](#method-AllowSendMessageRequest-to_list)

- [`AllowSendMessageRequest$to_bytes()`](#method-AllowSendMessageRequest-to_bytes)

- [`AllowSendMessageRequest$clone()`](#method-AllowSendMessageRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize AllowSendMessageRequest

#### Usage

    AllowSendMessageRequest$new(bot)

#### Arguments

- `bot`:

  TypeInputUser or identifier Resolve references (convert entities via
  client/utils)

  Resolves bot via client\$get_input_entity and utils\$get_input_user.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    AllowSendMessageRequest$resolve(client, utils)

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

    AllowSendMessageRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    AllowSendMessageRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AllowSendMessageRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
