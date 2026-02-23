# CancelCodeRequest

Telegram API type CancelCodeRequest

## Details

CancelCodeRequest R6 class

Represents the TLRequest auth.CancelCodeRequest.

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

- [`CancelCodeRequest$new()`](#method-CancelCodeRequest-new)

- [`CancelCodeRequest$to_list()`](#method-CancelCodeRequest-to_list)

- [`CancelCodeRequest$to_bytes()`](#method-CancelCodeRequest-to_bytes)

- [`CancelCodeRequest$from_reader()`](#method-CancelCodeRequest-from_reader)

- [`CancelCodeRequest$clone()`](#method-CancelCodeRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a CancelCodeRequest

#### Usage

    CancelCodeRequest$new(phone_number, phone_code_hash)

#### Arguments

- `phone_number`:

  character

- `phone_code_hash`:

  character

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    CancelCodeRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    CancelCodeRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create CancelCodeRequest

#### Usage

    CancelCodeRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing tgread_string()

#### Returns

CancelCodeRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CancelCodeRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
