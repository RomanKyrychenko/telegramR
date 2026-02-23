# GetFileHashesRequest

Telegram API type GetFileHashesRequest

## Details

GetFileHashesRequest R6 class

Represents the TL request upload.GetFileHashesRequest.

## Public fields

- `location`:

  Field.

- `offset`:

  Field.

## Methods

### Public methods

- [`GetFileHashesRequest$new()`](#method-GetFileHashesRequest-new)

- [`GetFileHashesRequest$to_list()`](#method-GetFileHashesRequest-to_list)

- [`GetFileHashesRequest$to_bytes()`](#method-GetFileHashesRequest-to_bytes)

- [`GetFileHashesRequest$from_reader()`](#method-GetFileHashesRequest-from_reader)

- [`GetFileHashesRequest$clone()`](#method-GetFileHashesRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a GetFileHashesRequest

#### Usage

    GetFileHashesRequest$new(location, offset)

#### Arguments

- `location`:

  TLObject-like

- `offset`:

  numeric (64-bit)

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (dictionary-like)

#### Usage

    GetFileHashesRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw vector

#### Usage

    GetFileHashesRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `from_reader()`

Read GetFileHashesRequest from a reader

#### Usage

    GetFileHashesRequest$from_reader(reader)

#### Arguments

- `reader`:

  an object providing read_long() and tgread_object()

#### Returns

GetFileHashesRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetFileHashesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
