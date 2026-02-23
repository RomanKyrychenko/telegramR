# ExportLoginTokenRequest

Telegram API type ExportLoginTokenRequest

## Details

ExportLoginTokenRequest R6 class

Represents the TLRequest auth.ExportLoginTokenRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `api_id`:

  Field.

- `api_hash`:

  Field.

- `except_ids`:

  Field.

## Methods

### Public methods

- [`ExportLoginTokenRequest$new()`](#method-ExportLoginTokenRequest-new)

- [`ExportLoginTokenRequest$to_list()`](#method-ExportLoginTokenRequest-to_list)

- [`ExportLoginTokenRequest$to_bytes()`](#method-ExportLoginTokenRequest-to_bytes)

- [`ExportLoginTokenRequest$from_reader()`](#method-ExportLoginTokenRequest-from_reader)

- [`ExportLoginTokenRequest$clone()`](#method-ExportLoginTokenRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize an ExportLoginTokenRequest

#### Usage

    ExportLoginTokenRequest$new(api_id, api_hash, except_ids = NULL)

#### Arguments

- `api_id`:

  integer

- `api_hash`:

  character

- `except_ids`:

  numeric vector (64-bit) or NULL

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    ExportLoginTokenRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    ExportLoginTokenRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create ExportLoginTokenRequest

#### Usage

    ExportLoginTokenRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string(), read_long()

#### Returns

ExportLoginTokenRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ExportLoginTokenRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
