# GetCdnFileHashesRequest

Telegram API type GetCdnFileHashesRequest

## Details

GetCdnFileHashesRequest R6 class

Represents the TL request upload.GetCdnFileHashesRequest.

## Public fields

- `file_token`:

  Field.

- `offset`:

  Field.

## Methods

### Public methods

- [`GetCdnFileHashesRequest$new()`](#method-GetCdnFileHashesRequest-new)

- [`GetCdnFileHashesRequest$to_list()`](#method-GetCdnFileHashesRequest-to_list)

- [`GetCdnFileHashesRequest$to_bytes()`](#method-GetCdnFileHashesRequest-to_bytes)

- [`GetCdnFileHashesRequest$from_reader()`](#method-GetCdnFileHashesRequest-from_reader)

- [`GetCdnFileHashesRequest$clone()`](#method-GetCdnFileHashesRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a GetCdnFileHashesRequest

#### Usage

    GetCdnFileHashesRequest$new(file_token, offset)

#### Arguments

- `file_token`:

  raw\|integer\|character

- `offset`:

  numeric (64-bit)

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (dictionary-like)

#### Usage

    GetCdnFileHashesRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw vector

#### Usage

    GetCdnFileHashesRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `from_reader()`

Read GetCdnFileHashesRequest from a reader

#### Usage

    GetCdnFileHashesRequest$from_reader(reader)

#### Arguments

- `reader`:

  an object providing tgread_bytes() and read_long()

#### Returns

GetCdnFileHashesRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetCdnFileHashesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
