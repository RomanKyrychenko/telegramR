# UpdateSettingsRequest

Telegram API type UpdateSettingsRequest

## Details

UpdateSettingsRequest R6 class

Representation of the UpdateSettingsRequest TLRequest.

## Public fields

- `allow_international`:

  Field.

- `lock_class`:

  Field.

## Active bindings

- `lock_class`:

  Field.

## Methods

### Public methods

- [`UpdateSettingsRequest$new()`](#method-UpdateSettingsRequest-new)

- [`UpdateSettingsRequest$to_list()`](#method-UpdateSettingsRequest-to_list)

- [`UpdateSettingsRequest$bytes()`](#method-UpdateSettingsRequest-bytes)

- [`UpdateSettingsRequest$from_reader()`](#method-UpdateSettingsRequest-from_reader)

- [`UpdateSettingsRequest$clone()`](#method-UpdateSettingsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize UpdateSettingsRequest

#### Usage

    UpdateSettingsRequest$new(allow_international = NULL)

#### Arguments

- `allow_international`:

  logical or NULL

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (dictionary-like)

#### Usage

    UpdateSettingsRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `bytes()`

Get raw bytes for this constructor

#### Usage

    UpdateSettingsRequest$bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    UpdateSettingsRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateSettingsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
