# EditUserInfoRequest

Telegram API type EditUserInfoRequest

## Details

EditUserInfoRequest R6 class

Edit user info (help.UserInfo). Serializes an input user, a message and
a list of message entities.

## Public fields

- `userId`:

  Field.

- `message`:

  Field.

## Methods

### Public methods

- [`EditUserInfoRequest$new()`](#method-EditUserInfoRequest-new)

- [`EditUserInfoRequest$resolve()`](#method-EditUserInfoRequest-resolve)

- [`EditUserInfoRequest$to_list()`](#method-EditUserInfoRequest-to_list)

- [`EditUserInfoRequest$to_bytes()`](#method-EditUserInfoRequest-to_bytes)

- [`EditUserInfoRequest$clone()`](#method-EditUserInfoRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize EditUserInfoRequest

#### Usage

    EditUserInfoRequest$new(userId = NULL, message = "", entities = list())

#### Arguments

- `userId`:

  TLObject-like or raw

- `message`:

  character

- `entities`:

  list of TLObject-like entities Resolve userId using client and utils

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    EditUserInfoRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object providing get_input_entity()

- `utils`:

  utils providing get_input_user() Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    EditUserInfoRequest$to_list()

#### Returns

list with \`\_\` discriminator, user_id, message and entities as lists
(if possible) Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    EditUserInfoRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EditUserInfoRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
