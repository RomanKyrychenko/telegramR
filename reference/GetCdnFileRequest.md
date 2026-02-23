# GetCdnFileRequest

Telegram API type GetCdnFileRequest

## Details

GetCdnFileRequest R6 class

Represents the TL request upload.GetCdnFileRequest.

## Public fields

- `file_token`:

  Field.

- `offset`:

  Field.

- `limit`:

  Field.

## Methods

### Public methods

- [`GetCdnFileRequest$new()`](#method-GetCdnFileRequest-new)

- [`GetCdnFileRequest$to_list()`](#method-GetCdnFileRequest-to_list)

- [`GetCdnFileRequest$to_bytes()`](#method-GetCdnFileRequest-to_bytes)

- [`GetCdnFileRequest$from_reader()`](#method-GetCdnFileRequest-from_reader)

- [`GetCdnFileRequest$clone()`](#method-GetCdnFileRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a GetCdnFileRequest

#### Usage

    GetCdnFileRequest$new(file_token, offset, limit)

#### Arguments

- `file_token`:

  raw\|integer\|character

- `offset`:

  numeric (64-bit)

- `limit`:

  integer

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (dictionary-like)

#### Usage

    GetCdnFileRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw vector

#### Usage

    GetCdnFileRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `from_reader()`

Read GetCdnFileRequest from a reader

#### Usage

    GetCdnFileRequest$from_reader(reader)

#### Arguments

- `reader`:

  an object providing tgread_bytes(), read_long(), read_int()

#### Returns

GetCdnFileRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetCdnFileRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
