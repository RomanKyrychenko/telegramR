# SignInRequest

Telegram API type SignInRequest

## Details

SignInRequest R6 class

Represents the TLRequest auth.SignInRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `phone_number`:

  Field.

- `phone_code_hash`:

  Field.

- `phone_code`:

  Field.

- `email_verification`:

  Field.

## Methods

### Public methods

- [`SignInRequest$new()`](#method-SignInRequest-new)

- [`SignInRequest$to_list()`](#method-SignInRequest-to_list)

- [`SignInRequest$to_bytes()`](#method-SignInRequest-to_bytes)

- [`SignInRequest$from_reader()`](#method-SignInRequest-from_reader)

- [`SignInRequest$clone()`](#method-SignInRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a SignInRequest

#### Usage

    SignInRequest$new(
      phone_number,
      phone_code_hash,
      phone_code = NULL,
      email_verification = NULL
    )

#### Arguments

- `phone_number`:

  character

- `phone_code_hash`:

  character

- `phone_code`:

  character or NULL

- `email_verification`:

  TL object or NULL

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    SignInRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    SignInRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create SignInRequest

#### Usage

    SignInRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string(),
  tgread_object()

#### Returns

SignInRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SignInRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
