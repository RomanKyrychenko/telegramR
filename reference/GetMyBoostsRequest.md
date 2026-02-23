# GetMyBoostsRequest

Telegram API type GetMyBoostsRequest

## Details

GetMyBoostsRequest R6 class

Representation of the TL request "GetMyBoostsRequest".

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor ID for the request

- `SUBCLASS_OF_ID`:

  Subclass ID for the request

## Methods

### Public methods

- [`GetMyBoostsRequest$new()`](#method-GetMyBoostsRequest-new)

- [`GetMyBoostsRequest$to_list()`](#method-GetMyBoostsRequest-to_list)

- [`GetMyBoostsRequest$bytes()`](#method-GetMyBoostsRequest-bytes)

- [`GetMyBoostsRequest$from_reader()`](#method-GetMyBoostsRequest-from_reader)

- [`GetMyBoostsRequest$clone()`](#method-GetMyBoostsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Create a new GetMyBoostsRequest

#### Usage

    GetMyBoostsRequest$new()

#### Returns

self

------------------------------------------------------------------------

### Method `to_list()`

Convert request to a list (dictionary)

#### Usage

    GetMyBoostsRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `bytes()`

Serialize to raw bytes

#### Usage

    GetMyBoostsRequest$bytes()

#### Returns

raw vector Read object from reader and return new instance

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetMyBoostsRequest$from_reader(reader)

#### Arguments

- `reader`:

  an object exposing tgread_object / read_int / read_string as in the
  surrounding codebase

#### Returns

GetMyBoostsRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetMyBoostsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
