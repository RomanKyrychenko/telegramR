# CheckRecoveryPasswordRequest

Telegram API type CheckRecoveryPasswordRequest

## Details

CheckRecoveryPasswordRequest R6 class

Represents the TLRequest auth.CheckRecoveryPasswordRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `code`:

  Field.

## Methods

### Public methods

- [`CheckRecoveryPasswordRequest$new()`](#method-CheckRecoveryPasswordRequest-new)

- [`CheckRecoveryPasswordRequest$to_list()`](#method-CheckRecoveryPasswordRequest-to_list)

- [`CheckRecoveryPasswordRequest$to_bytes()`](#method-CheckRecoveryPasswordRequest-to_bytes)

- [`CheckRecoveryPasswordRequest$from_reader()`](#method-CheckRecoveryPasswordRequest-from_reader)

- [`CheckRecoveryPasswordRequest$clone()`](#method-CheckRecoveryPasswordRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a CheckRecoveryPasswordRequest

#### Usage

    CheckRecoveryPasswordRequest$new(code)

#### Arguments

- `code`:

  character

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    CheckRecoveryPasswordRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    CheckRecoveryPasswordRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create CheckRecoveryPasswordRequest

#### Usage

    CheckRecoveryPasswordRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing tgread_string()

#### Returns

CheckRecoveryPasswordRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CheckRecoveryPasswordRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
