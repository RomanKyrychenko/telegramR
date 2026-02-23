# CheckPasswordRequest

Telegram API type CheckPasswordRequest

## Details

CheckPasswordRequest R6 class

Represents the TLRequest auth.CheckPasswordRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `password`:

  Field.

## Methods

### Public methods

- [`CheckPasswordRequest$new()`](#method-CheckPasswordRequest-new)

- [`CheckPasswordRequest$to_list()`](#method-CheckPasswordRequest-to_list)

- [`CheckPasswordRequest$to_bytes()`](#method-CheckPasswordRequest-to_bytes)

- [`CheckPasswordRequest$from_reader()`](#method-CheckPasswordRequest-from_reader)

- [`CheckPasswordRequest$clone()`](#method-CheckPasswordRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a CheckPasswordRequest

#### Usage

    CheckPasswordRequest$new(password)

#### Arguments

- `password`:

  TL object (TypeInputCheckPasswordSRP)

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    CheckPasswordRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    CheckPasswordRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create CheckPasswordRequest

#### Usage

    CheckPasswordRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing tgread_object()

#### Returns

CheckPasswordRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CheckPasswordRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
