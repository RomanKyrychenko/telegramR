# SaveFilePartRequest

Telegram API type SaveFilePartRequest

## Details

SaveFilePartRequest R6 class

R6 representation of the Telegram TL request upload.SaveFilePartRequest.

## Public fields

- `file_id`:

  Field.

- `file_part`:

  Field.

- `bytes_data`:

  Field.

## Methods

### Public methods

- [`SaveFilePartRequest$new()`](#method-SaveFilePartRequest-new)

- [`SaveFilePartRequest$to_list()`](#method-SaveFilePartRequest-to_list)

- [`SaveFilePartRequest$to_bytes()`](#method-SaveFilePartRequest-to_bytes)

- [`SaveFilePartRequest$from_reader()`](#method-SaveFilePartRequest-from_reader)

- [`SaveFilePartRequest$clone()`](#method-SaveFilePartRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a new SaveFilePartRequest instance.

#### Usage

    SaveFilePartRequest$new(file_id, file_part, bytes_data)

#### Arguments

- `file_id`:

  numeric (64-bit) Unique file identifier.

- `file_part`:

  integer Zero-based index of this part.

- `bytes_data`:

  raw\|integer\|character Payload bytes for this part.

#### Returns

SaveFilePartRequest (invisibly) for chaining.

------------------------------------------------------------------------

### Method `to_list()`

Convert the request to a plain list (for inspection or JSON).

#### Usage

    SaveFilePartRequest$to_list()

#### Returns

list A named list with class tag and fields.

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize the request into TL-compliant raw bytes.

#### Usage

    SaveFilePartRequest$to_bytes()

#### Returns

raw Serialized byte vector.

------------------------------------------------------------------------

### Method `from_reader()`

Read SaveFilePartRequest from a reader

#### Usage

    SaveFilePartRequest$from_reader(reader)

#### Arguments

- `reader`:

  an object providing read_long(), read_int() and tgread_bytes()

#### Returns

SaveFilePartRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SaveFilePartRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
