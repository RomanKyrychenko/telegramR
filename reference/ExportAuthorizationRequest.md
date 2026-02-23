# ExportAuthorizationRequest

Telegram API type ExportAuthorizationRequest

## Details

ExportAuthorizationRequest R6 class

Represents the TLRequest auth.ExportAuthorizationRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `dc_id`:

  Field.

## Methods

### Public methods

- [`ExportAuthorizationRequest$new()`](#method-ExportAuthorizationRequest-new)

- [`ExportAuthorizationRequest$to_list()`](#method-ExportAuthorizationRequest-to_list)

- [`ExportAuthorizationRequest$to_bytes()`](#method-ExportAuthorizationRequest-to_bytes)

- [`ExportAuthorizationRequest$from_reader()`](#method-ExportAuthorizationRequest-from_reader)

- [`ExportAuthorizationRequest$clone()`](#method-ExportAuthorizationRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize an ExportAuthorizationRequest

#### Usage

    ExportAuthorizationRequest$new(dc_id)

#### Arguments

- `dc_id`:

  integer Convert to an R list (similar to to_dict)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ExportAuthorizationRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    ExportAuthorizationRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create ExportAuthorizationRequest

#### Usage

    ExportAuthorizationRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int()

#### Returns

ExportAuthorizationRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ExportAuthorizationRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
