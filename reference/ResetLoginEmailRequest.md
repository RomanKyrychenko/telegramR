# ResetLoginEmailRequest

Telegram API type ResetLoginEmailRequest

## Details

ResetLoginEmailRequest R6 class

Represents the TLRequest auth.ResetLoginEmailRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `phone_number`:

  Field.

- `phone_code_hash`:

  Field.

## Methods

### Public methods

- [`ResetLoginEmailRequest$new()`](#method-ResetLoginEmailRequest-new)

- [`ResetLoginEmailRequest$to_list()`](#method-ResetLoginEmailRequest-to_list)

- [`ResetLoginEmailRequest$to_bytes()`](#method-ResetLoginEmailRequest-to_bytes)

- [`ResetLoginEmailRequest$from_reader()`](#method-ResetLoginEmailRequest-from_reader)

- [`ResetLoginEmailRequest$clone()`](#method-ResetLoginEmailRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a ResetLoginEmailRequest

#### Usage

    ResetLoginEmailRequest$new(phone_number, phone_code_hash)

#### Arguments

- `phone_number`:

  character

- `phone_code_hash`:

  character

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    ResetLoginEmailRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    ResetLoginEmailRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create ResetLoginEmailRequest

#### Usage

    ResetLoginEmailRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string(),
  tgread_object()

#### Returns

ResetLoginEmailRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ResetLoginEmailRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
