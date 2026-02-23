# ResetAuthorizationsRequest

Telegram API type ResetAuthorizationsRequest

## Details

ResetAuthorizationsRequest R6 class

Represents the TLRequest auth.ResetAuthorizationsRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`ResetAuthorizationsRequest$new()`](#method-ResetAuthorizationsRequest-new)

- [`ResetAuthorizationsRequest$to_list()`](#method-ResetAuthorizationsRequest-to_list)

- [`ResetAuthorizationsRequest$to_bytes()`](#method-ResetAuthorizationsRequest-to_bytes)

- [`ResetAuthorizationsRequest$from_reader()`](#method-ResetAuthorizationsRequest-from_reader)

- [`ResetAuthorizationsRequest$clone()`](#method-ResetAuthorizationsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a ResetAuthorizationsRequest

#### Usage

    ResetAuthorizationsRequest$new()

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    ResetAuthorizationsRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    ResetAuthorizationsRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create ResetAuthorizationsRequest

#### Usage

    ResetAuthorizationsRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string(),
  tgread_object()

#### Returns

ResetAuthorizationsRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ResetAuthorizationsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
