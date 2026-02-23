# UpdateUserEmojiStatusRequest

Telegram API type UpdateUserEmojiStatusRequest

## Details

UpdateUserEmojiStatusRequest R6 class

Represents the UpdateUserEmojiStatusRequest TL request.

## Public fields

- `user_id`:

  Field.

- `emoji_status`:

  Field.

## Methods

### Public methods

- [`UpdateUserEmojiStatusRequest$new()`](#method-UpdateUserEmojiStatusRequest-new)

- [`UpdateUserEmojiStatusRequest$resolve()`](#method-UpdateUserEmojiStatusRequest-resolve)

- [`UpdateUserEmojiStatusRequest$to_list()`](#method-UpdateUserEmojiStatusRequest-to_list)

- [`UpdateUserEmojiStatusRequest$to_bytes()`](#method-UpdateUserEmojiStatusRequest-to_bytes)

- [`UpdateUserEmojiStatusRequest$clone()`](#method-UpdateUserEmojiStatusRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize UpdateUserEmojiStatusRequest

#### Usage

    UpdateUserEmojiStatusRequest$new(user_id, emoji_status)

#### Arguments

- `user_id`:

  TypeInputUser or identifier

- `emoji_status`:

  TypeEmojiStatus object Resolve references (convert entities via
  client/utils)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    UpdateUserEmojiStatusRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  utils with get_input_user / get_input_media etc Convert to list
  (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    UpdateUserEmojiStatusRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    UpdateUserEmojiStatusRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateUserEmojiStatusRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
