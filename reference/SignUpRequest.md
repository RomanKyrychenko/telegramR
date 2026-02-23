# SignUpRequest

Telegram API type SignUpRequest

## Details

SignUpRequest R6 class

Represents the TLRequest auth.SignUpRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `phone_number`:

  Field.

- `phone_code_hash`:

  Field.

- `first_name`:

  Field.

- `last_name`:

  Field.

- `no_joined_notifications`:

  Field.

## Methods

### Public methods

- [`SignUpRequest$new()`](#method-SignUpRequest-new)

- [`SignUpRequest$to_list()`](#method-SignUpRequest-to_list)

- [`SignUpRequest$to_bytes()`](#method-SignUpRequest-to_bytes)

- [`SignUpRequest$from_reader()`](#method-SignUpRequest-from_reader)

- [`SignUpRequest$clone()`](#method-SignUpRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a SignUpRequest

#### Usage

    SignUpRequest$new(
      phone_number,
      phone_code_hash,
      first_name,
      last_name,
      no_joined_notifications = NULL
    )

#### Arguments

- `phone_number`:

  character

- `phone_code_hash`:

  character

- `first_name`:

  character

- `last_name`:

  character

- `no_joined_notifications`:

  logical or NULL

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    SignUpRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    SignUpRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create SignUpRequest

#### Usage

    SignUpRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int() and tgread_string()

#### Returns

SignUpRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SignUpRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
