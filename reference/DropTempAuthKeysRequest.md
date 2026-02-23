# DropTempAuthKeysRequest

Telegram API type DropTempAuthKeysRequest

## Details

DropTempAuthKeysRequest R6 class

Represents the TLRequest auth.DropTempAuthKeysRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `except_auth_keys`:

  Field.

## Methods

### Public methods

- [`DropTempAuthKeysRequest$new()`](#method-DropTempAuthKeysRequest-new)

- [`DropTempAuthKeysRequest$to_list()`](#method-DropTempAuthKeysRequest-to_list)

- [`DropTempAuthKeysRequest$to_bytes()`](#method-DropTempAuthKeysRequest-to_bytes)

- [`DropTempAuthKeysRequest$from_reader()`](#method-DropTempAuthKeysRequest-from_reader)

- [`DropTempAuthKeysRequest$clone()`](#method-DropTempAuthKeysRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a DropTempAuthKeysRequest

#### Usage

    DropTempAuthKeysRequest$new(except_auth_keys = NULL)

#### Arguments

- `except_auth_keys`:

  numeric vector (64-bit) or NULL

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    DropTempAuthKeysRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    DropTempAuthKeysRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create DropTempAuthKeysRequest

#### Usage

    DropTempAuthKeysRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), read_long()

#### Returns

DropTempAuthKeysRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DropTempAuthKeysRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
