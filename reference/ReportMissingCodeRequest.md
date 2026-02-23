# ReportMissingCodeRequest

Telegram API type ReportMissingCodeRequest

## Details

ReportMissingCodeRequest R6 class

Represents the TLRequest auth.ReportMissingCodeRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `phone_number`:

  Field.

- `phone_code_hash`:

  Field.

- `mnc`:

  Field.

## Methods

### Public methods

- [`ReportMissingCodeRequest$new()`](#method-ReportMissingCodeRequest-new)

- [`ReportMissingCodeRequest$to_list()`](#method-ReportMissingCodeRequest-to_list)

- [`ReportMissingCodeRequest$to_bytes()`](#method-ReportMissingCodeRequest-to_bytes)

- [`ReportMissingCodeRequest$from_reader()`](#method-ReportMissingCodeRequest-from_reader)

- [`ReportMissingCodeRequest$clone()`](#method-ReportMissingCodeRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a ReportMissingCodeRequest

#### Usage

    ReportMissingCodeRequest$new(phone_number, phone_code_hash, mnc)

#### Arguments

- `phone_number`:

  character

- `phone_code_hash`:

  character

- `mnc`:

  character

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    ReportMissingCodeRequest$to_list()

#### Returns

list Serialize to bytes

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    ReportMissingCodeRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create ReportMissingCodeRequest

#### Usage

    ReportMissingCodeRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string(),
  tgread_object()

#### Returns

ReportMissingCodeRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReportMissingCodeRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
