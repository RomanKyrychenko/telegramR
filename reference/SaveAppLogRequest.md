# SaveAppLogRequest

Telegram API type SaveAppLogRequest

## Details

SaveAppLogRequest R6 class

Request to save application log events.

## Public fields

- `events`:

  Field.

## Methods

### Public methods

- [`SaveAppLogRequest$new()`](#method-SaveAppLogRequest-new)

- [`SaveAppLogRequest$to_list()`](#method-SaveAppLogRequest-to_list)

- [`SaveAppLogRequest$to_bytes()`](#method-SaveAppLogRequest-to_bytes)

- [`SaveAppLogRequest$clone()`](#method-SaveAppLogRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize SaveAppLogRequest

#### Usage

    SaveAppLogRequest$new(events = list())

#### Arguments

- `events`:

  list of TLObject-like events Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    SaveAppLogRequest$to_list()

#### Returns

list with a \`\_\` discriminator and events as lists (if possible)
Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    SaveAppLogRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SaveAppLogRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
