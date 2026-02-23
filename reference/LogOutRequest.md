# LogOutRequest

Telegram API type LogOutRequest

## Details

LogOutRequest R6 class

Represents the TLRequest auth.LogOutRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`LogOutRequest$new()`](#method-LogOutRequest-new)

- [`LogOutRequest$to_list()`](#method-LogOutRequest-to_list)

- [`LogOutRequest$to_bytes()`](#method-LogOutRequest-to_bytes)

- [`LogOutRequest$from_reader()`](#method-LogOutRequest-from_reader)

- [`LogOutRequest$clone()`](#method-LogOutRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a LogOutRequest

#### Usage

    LogOutRequest$new()

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    LogOutRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    LogOutRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create LogOutRequest

#### Usage

    LogOutRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string(),
  tgread_object()

#### Returns

LogOutRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LogOutRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
