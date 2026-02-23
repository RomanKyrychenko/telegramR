# ResendCodeRequest

Telegram API type ResendCodeRequest

## Details

ResendCodeRequest R6 class

Represents the TLRequest auth.ResendCodeRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `phone_number`:

  Field.

- `phone_code_hash`:

  Field.

- `reason`:

  Field.

## Methods

### Public methods

- [`ResendCodeRequest$new()`](#method-ResendCodeRequest-new)

- [`ResendCodeRequest$to_list()`](#method-ResendCodeRequest-to_list)

- [`ResendCodeRequest$to_bytes()`](#method-ResendCodeRequest-to_bytes)

- [`ResendCodeRequest$from_reader()`](#method-ResendCodeRequest-from_reader)

- [`ResendCodeRequest$clone()`](#method-ResendCodeRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a ResendCodeRequest

#### Usage

    ResendCodeRequest$new(phone_number, phone_code_hash, reason = NULL)

#### Arguments

- `phone_number`:

  character

- `phone_code_hash`:

  character

- `reason`:

  character or NULL

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    ResendCodeRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    ResendCodeRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create ResendCodeRequest

#### Usage

    ResendCodeRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string(),
  tgread_object()

#### Returns

ResendCodeRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ResendCodeRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
