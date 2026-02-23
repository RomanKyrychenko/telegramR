# GetUserInfoRequest

Telegram API type GetUserInfoRequest

## Details

GetUserInfoRequest R6 class

Request to get user info (help.UserInfo).

## Public fields

- `userId`:

  Field.

## Methods

### Public methods

- [`GetUserInfoRequest$new()`](#method-GetUserInfoRequest-new)

- [`GetUserInfoRequest$resolve()`](#method-GetUserInfoRequest-resolve)

- [`GetUserInfoRequest$to_list()`](#method-GetUserInfoRequest-to_list)

- [`GetUserInfoRequest$to_bytes()`](#method-GetUserInfoRequest-to_bytes)

- [`GetUserInfoRequest$clone()`](#method-GetUserInfoRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetUserInfoRequest

#### Usage

    GetUserInfoRequest$new(userId = NULL)

#### Arguments

- `userId`:

  TLObject-like or raw Resolve userId using client and utils

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    GetUserInfoRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object providing get_input_entity()

- `utils`:

  utils providing get_input_user() Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetUserInfoRequest$to_list()

#### Returns

list with \`\_\` discriminator and user_id as list (if possible)
Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetUserInfoRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetUserInfoRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
