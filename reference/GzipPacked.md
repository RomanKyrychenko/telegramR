# GzipPacked

Telegram API type GzipPacked

## Details

R6 Class Representing GzipPacked

This class provides methods to initialize, compress, decompress,
serialize, and convert gzipped data to various formats.

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `GzipPacked`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for GzipPacked (0x3072cfa1).

- `SUBCLASS_OF_ID`:

  The subclass ID for GzipPacked.

- `data`:

  Field.

## Methods

### Public methods

- [`GzipPacked$new()`](#method-GzipPacked-new)

- [`GzipPacked$gzip_if_smaller()`](#method-GzipPacked-gzip_if_smaller)

- [`GzipPacked$to_bytes()`](#method-GzipPacked-to_bytes)

- [`GzipPacked$read()`](#method-GzipPacked-read)

- [`GzipPacked$to_dict()`](#method-GzipPacked-to_dict)

- [`GzipPacked$from_reader()`](#method-GzipPacked-from_reader)

- [`GzipPacked$clone()`](#method-GzipPacked-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

Initialize a new \`GzipPacked\` object.

#### Usage

    GzipPacked$new(data)

#### Arguments

- `data`:

  `raw` The raw gzipped data.

------------------------------------------------------------------------

### Method `gzip_if_smaller()`

Optionally gzip the data if it is content-related and smaller when
compressed.

#### Usage

    GzipPacked$gzip_if_smaller(content_related, data)

#### Arguments

- `content_related`:

  `logical` Whether the data is content-related.

- `data`:

  `raw` The data to be gzipped.

#### Returns

`raw` The gzipped data if smaller, otherwise the original data.

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize the object to a byte array.

#### Usage

    GzipPacked$to_bytes()

#### Returns

`raw` A byte array representing the serialized object.

------------------------------------------------------------------------

### Method `read()`

Read and decompress the gzipped data from a binary reader.

#### Usage

    GzipPacked$read(reader)

#### Arguments

- `reader`:

  A binary reader object.

#### Returns

`raw` The decompressed data.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary representation.

#### Usage

    GzipPacked$to_dict()

#### Returns

`list` A dictionary representation of the object.

------------------------------------------------------------------------

### Method `from_reader()`

Create a GzipPacked object from a binary reader.

#### Usage

    GzipPacked$from_reader(reader)

#### Arguments

- `reader`:

  A binary reader object.

#### Returns

A new GzipPacked object.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GzipPacked$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
