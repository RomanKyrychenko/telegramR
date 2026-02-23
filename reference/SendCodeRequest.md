# SendCodeRequest

Telegram API type SendCodeRequest

## Details

SendCodeRequest R6 class

Represents the TLRequest auth.SendCodeRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `phone_number`:

  Field.

- `api_id`:

  Field.

- `api_hash`:

  Field.

- `settings`:

  Field.

## Methods

### Public methods

- [`SendCodeRequest$new()`](#method-SendCodeRequest-new)

- [`SendCodeRequest$to_list()`](#method-SendCodeRequest-to_list)

- [`SendCodeRequest$to_bytes()`](#method-SendCodeRequest-to_bytes)

- [`SendCodeRequest$from_reader()`](#method-SendCodeRequest-from_reader)

- [`SendCodeRequest$clone()`](#method-SendCodeRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a SendCodeRequest

#### Usage

    SendCodeRequest$new(phone_number, api_id, api_hash, settings)

#### Arguments

- `phone_number`:

  character

- `api_id`:

  integer

- `api_hash`:

  character

- `settings`:

  TL object

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    SendCodeRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    SendCodeRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create SendCodeRequest

#### Usage

    SendCodeRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string(),
  tgread_object()

#### Returns

SendCodeRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SendCodeRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
