# SetBotUpdatesStatusRequest

Telegram API type SetBotUpdatesStatusRequest

## Details

SetBotUpdatesStatusRequest R6 class

Notify server of bot updates status.

## Public fields

- `message`:

  Field.

## Methods

### Public methods

- [`SetBotUpdatesStatusRequest$new()`](#method-SetBotUpdatesStatusRequest-new)

- [`SetBotUpdatesStatusRequest$to_list()`](#method-SetBotUpdatesStatusRequest-to_list)

- [`SetBotUpdatesStatusRequest$to_bytes()`](#method-SetBotUpdatesStatusRequest-to_bytes)

- [`SetBotUpdatesStatusRequest$clone()`](#method-SetBotUpdatesStatusRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize SetBotUpdatesStatusRequest

#### Usage

    SetBotUpdatesStatusRequest$new(pendingUpdatesCount = 0L, message = "")

#### Arguments

- `pendingUpdatesCount`:

  integer

- `message`:

  character Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    SetBotUpdatesStatusRequest$to_list()

#### Returns

list representation Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    SetBotUpdatesStatusRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetBotUpdatesStatusRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
