# Document

Telegram API type Document

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `Document`

## Public fields

- `id`:

  Field.

- `access_hash`:

  Field.

- `file_reference`:

  Field.

- `date`:

  Field.

- `mime_type`:

  Field.

- `size`:

  Field.

- `dc_id`:

  Field.

- `attributes`:

  Field.

- `thumbs`:

  Field.

- `video_thumbs`:

  Field.

## Methods

### Public methods

- [`Document$new()`](#method-Document-new)

- [`Document$to_list()`](#method-Document-to_list)

- [`Document$bytes()`](#method-Document-bytes)

- [`Document$clone()`](#method-Document-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$from_reader()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-from_reader)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    Document$new(
      id,
      access_hash,
      file_reference,
      date,
      mime_type,
      size,
      dc_id,
      attributes,
      thumbs = NULL,
      video_thumbs = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    Document$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    Document$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Document$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
