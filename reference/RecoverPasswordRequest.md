# RecoverPasswordRequest

Telegram API type RecoverPasswordRequest

## Details

RecoverPasswordRequest R6 class

Represents the TLRequest auth.RecoverPasswordRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `code`:

  Field.

- `new_settings`:

  Field.

## Methods

### Public methods

- [`RecoverPasswordRequest$new()`](#method-RecoverPasswordRequest-new)

- [`RecoverPasswordRequest$to_list()`](#method-RecoverPasswordRequest-to_list)

- [`RecoverPasswordRequest$to_bytes()`](#method-RecoverPasswordRequest-to_bytes)

- [`RecoverPasswordRequest$from_reader()`](#method-RecoverPasswordRequest-from_reader)

- [`RecoverPasswordRequest$clone()`](#method-RecoverPasswordRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a RecoverPasswordRequest

#### Usage

    RecoverPasswordRequest$new(code, new_settings = NULL)

#### Arguments

- `code`:

  character

- `new_settings`:

  TL object or NULL

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    RecoverPasswordRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    RecoverPasswordRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create RecoverPasswordRequest

#### Usage

    RecoverPasswordRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string(),
  tgread_object()

#### Returns

RecoverPasswordRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RecoverPasswordRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
