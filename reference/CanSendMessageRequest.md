# CanSendMessageRequest

Telegram API type CanSendMessageRequest

## Details

CanSendMessageRequest R6 class

Represents the CanSendMessageRequest TL request.

Each method is documented inline below.

## Public fields

- `bot`:

  Field.

## Methods

### Public methods

- [`CanSendMessageRequest$new()`](#method-CanSendMessageRequest-new)

- [`CanSendMessageRequest$resolve()`](#method-CanSendMessageRequest-resolve)

- [`CanSendMessageRequest$to_list()`](#method-CanSendMessageRequest-to_list)

- [`CanSendMessageRequest$to_bytes()`](#method-CanSendMessageRequest-to_bytes)

- [`CanSendMessageRequest$clone()`](#method-CanSendMessageRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize CanSendMessageRequest

#### Usage

    CanSendMessageRequest$new(bot)

#### Arguments

- `bot`:

  TypeInputUser or identifier Resolve references (convert entities via
  client/utils)

  Resolves bot via client\$get_input_entity and utils\$get_input_user.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    CanSendMessageRequest$resolve(client, utils)

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

    CanSendMessageRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    CanSendMessageRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CanSendMessageRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
