# SetBotGroupDefaultAdminRightsRequest

Telegram API type SetBotGroupDefaultAdminRightsRequest

## Details

SetBotGroupDefaultAdminRightsRequest R6 class

Represents the SetBotGroupDefaultAdminRightsRequest TL request.

Each method is documented inline below.

## Public fields

- `admin_rights`:

  Field.

## Methods

### Public methods

- [`SetBotGroupDefaultAdminRightsRequest$new()`](#method-SetBotGroupDefaultAdminRightsRequest-new)

- [`SetBotGroupDefaultAdminRightsRequest$to_list()`](#method-SetBotGroupDefaultAdminRightsRequest-to_list)

- [`SetBotGroupDefaultAdminRightsRequest$to_bytes()`](#method-SetBotGroupDefaultAdminRightsRequest-to_bytes)

- [`SetBotGroupDefaultAdminRightsRequest$clone()`](#method-SetBotGroupDefaultAdminRightsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize SetBotGroupDefaultAdminRightsRequest

#### Usage

    SetBotGroupDefaultAdminRightsRequest$new(admin_rights)

#### Arguments

- `admin_rights`:

  TypeChatAdminRights or object Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    SetBotGroupDefaultAdminRightsRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    SetBotGroupDefaultAdminRightsRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetBotGroupDefaultAdminRightsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
