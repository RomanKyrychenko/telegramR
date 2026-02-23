# GetWebFileRequest

Telegram API type GetWebFileRequest

## Details

GetWebFileRequest R6 class

Represents the TL request upload.GetWebFileRequest.

## Public fields

- `location`:

  Field.

- `offset`:

  Field.

- `limit`:

  Field.

## Methods

### Public methods

- [`GetWebFileRequest$new()`](#method-GetWebFileRequest-new)

- [`GetWebFileRequest$to_list()`](#method-GetWebFileRequest-to_list)

- [`GetWebFileRequest$to_bytes()`](#method-GetWebFileRequest-to_bytes)

- [`GetWebFileRequest$from_reader()`](#method-GetWebFileRequest-from_reader)

- [`GetWebFileRequest$clone()`](#method-GetWebFileRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a GetWebFileRequest

#### Usage

    GetWebFileRequest$new(location, offset, limit)

#### Arguments

- `location`:

  TLObject-like

- `offset`:

  integer

- `limit`:

  integer

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (dictionary-like)

#### Usage

    GetWebFileRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw vector

#### Usage

    GetWebFileRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `from_reader()`

Read GetWebFileRequest from a reader

#### Usage

    GetWebFileRequest$from_reader(reader)

#### Arguments

- `reader`:

  an object providing tgread_object(), read_int()

#### Returns

GetWebFileRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetWebFileRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
