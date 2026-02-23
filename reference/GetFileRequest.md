# GetFileRequest

Telegram API type GetFileRequest

## Details

GetFileRequest R6 class

Represents the TL request upload.GetFileRequest.

## Public fields

- `location`:

  Field.

- `offset`:

  Field.

- `limit`:

  Field.

- `precise`:

  Field.

- `cdn_supported`:

  Field.

## Methods

### Public methods

- [`GetFileRequest$new()`](#method-GetFileRequest-new)

- [`GetFileRequest$to_list()`](#method-GetFileRequest-to_list)

- [`GetFileRequest$to_bytes()`](#method-GetFileRequest-to_bytes)

- [`GetFileRequest$from_reader()`](#method-GetFileRequest-from_reader)

- [`GetFileRequest$clone()`](#method-GetFileRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a GetFileRequest

#### Usage

    GetFileRequest$new(
      location,
      offset,
      limit,
      precise = NULL,
      cdn_supported = NULL
    )

#### Arguments

- `location`:

  TLObject-like

- `offset`:

  numeric (64-bit)

- `limit`:

  integer

- `precise`:

  logical or NULL

- `cdn_supported`:

  logical or NULL

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (dictionary-like)

#### Usage

    GetFileRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw vector

#### Usage

    GetFileRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `from_reader()`

Read GetFileRequest from a reader

#### Usage

    GetFileRequest$from_reader(reader)

#### Arguments

- `reader`:

  an object providing read_int(), tgread_object(), read_long(),
  read_int()

#### Returns

GetFileRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetFileRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
