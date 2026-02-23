# SaveBigFilePartRequest

Telegram API type SaveBigFilePartRequest

## Details

SaveBigFilePartRequest R6 class

Represents the TL request upload.SaveBigFilePartRequest.

## Public fields

- `file_id`:

  Field.

- `file_part`:

  Field.

- `file_total_parts`:

  Field.

- `bytes_data`:

  Field.

## Methods

### Public methods

- [`SaveBigFilePartRequest$new()`](#method-SaveBigFilePartRequest-new)

- [`SaveBigFilePartRequest$to_list()`](#method-SaveBigFilePartRequest-to_list)

- [`SaveBigFilePartRequest$to_bytes()`](#method-SaveBigFilePartRequest-to_bytes)

- [`SaveBigFilePartRequest$from_reader()`](#method-SaveBigFilePartRequest-from_reader)

- [`SaveBigFilePartRequest$clone()`](#method-SaveBigFilePartRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a SaveBigFilePartRequest

#### Usage

    SaveBigFilePartRequest$new(file_id, file_part, file_total_parts, bytes_data)

#### Arguments

- `file_id`:

  numeric (64-bit)

- `file_part`:

  integer

- `file_total_parts`:

  integer

- `bytes_data`:

  raw\|integer\|character

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (dictionary-like)

#### Usage

    SaveBigFilePartRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw vector

#### Usage

    SaveBigFilePartRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `from_reader()`

Read SaveBigFilePartRequest from a reader

#### Usage

    SaveBigFilePartRequest$from_reader(reader)

#### Arguments

- `reader`:

  an object providing read_long(), read_int() and tgread_bytes()

#### Returns

SaveBigFilePartRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SaveBigFilePartRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
