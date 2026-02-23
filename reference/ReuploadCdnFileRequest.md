# ReuploadCdnFileRequest

Telegram API type ReuploadCdnFileRequest

## Details

ReuploadCdnFileRequest R6 class

Represents the TL request upload.ReuploadCdnFileRequest.

## Public fields

- `file_token`:

  Field.

- `request_token`:

  Field.

## Methods

### Public methods

- [`ReuploadCdnFileRequest$new()`](#method-ReuploadCdnFileRequest-new)

- [`ReuploadCdnFileRequest$to_list()`](#method-ReuploadCdnFileRequest-to_list)

- [`ReuploadCdnFileRequest$to_bytes()`](#method-ReuploadCdnFileRequest-to_bytes)

- [`ReuploadCdnFileRequest$from_reader()`](#method-ReuploadCdnFileRequest-from_reader)

- [`ReuploadCdnFileRequest$clone()`](#method-ReuploadCdnFileRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a ReuploadCdnFileRequest

#### Usage

    ReuploadCdnFileRequest$new(file_token, request_token)

#### Arguments

- `file_token`:

  raw\|integer\|character

- `request_token`:

  raw\|integer\|character

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (dictionary-like)

#### Usage

    ReuploadCdnFileRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw vector

#### Usage

    ReuploadCdnFileRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `from_reader()`

Read ReuploadCdnFileRequest from a reader

#### Usage

    ReuploadCdnFileRequest$from_reader(reader)

#### Arguments

- `reader`:

  an object providing tgread_bytes()

#### Returns

ReuploadCdnFileRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReuploadCdnFileRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
