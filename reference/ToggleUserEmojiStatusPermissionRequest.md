# ToggleUserEmojiStatusPermissionRequest

Telegram API type ToggleUserEmojiStatusPermissionRequest

## Details

ToggleUserEmojiStatusPermissionRequest R6 class

Represents the ToggleUserEmojiStatusPermissionRequest TL request.

Each method is documented inline below.

## Public fields

- `bot`:

  Field.

- `enabled`:

  Field.

## Methods

### Public methods

- [`ToggleUserEmojiStatusPermissionRequest$new()`](#method-ToggleUserEmojiStatusPermissionRequest-new)

- [`ToggleUserEmojiStatusPermissionRequest$resolve()`](#method-ToggleUserEmojiStatusPermissionRequest-resolve)

- [`ToggleUserEmojiStatusPermissionRequest$to_list()`](#method-ToggleUserEmojiStatusPermissionRequest-to_list)

- [`ToggleUserEmojiStatusPermissionRequest$to_bytes()`](#method-ToggleUserEmojiStatusPermissionRequest-to_bytes)

- [`ToggleUserEmojiStatusPermissionRequest$clone()`](#method-ToggleUserEmojiStatusPermissionRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize ToggleUserEmojiStatusPermissionRequest

#### Usage

    ToggleUserEmojiStatusPermissionRequest$new(bot, enabled)

#### Arguments

- `bot`:

  TypeInputUser or identifier

- `enabled`:

  logical Resolve references (convert entities via client/utils)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    ToggleUserEmojiStatusPermissionRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  utils with get_input_user Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ToggleUserEmojiStatusPermissionRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    ToggleUserEmojiStatusPermissionRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleUserEmojiStatusPermissionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
