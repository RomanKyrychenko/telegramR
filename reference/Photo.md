# Photo

Telegram API type Photo

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `Photo`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `access_hash`:

  Field.

- `file_reference`:

  Field.

- `date`:

  Field.

- `sizes`:

  Field.

- `dc_id`:

  Field.

- `has_stickers`:

  Field.

- `video_sizes`:

  Field.

## Methods

### Public methods

- [`Photo$new()`](#method-Photo-new)

- [`Photo$to_dict()`](#method-Photo-to_dict)

- [`Photo$bytes()`](#method-Photo-bytes)

- [`Photo$clone()`](#method-Photo-clone)

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
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    Photo$new(
      id = NULL,
      access_hash = NULL,
      file_reference = NULL,
      date = NULL,
      sizes = NULL,
      dc_id = NULL,
      has_stickers = NULL,
      video_sizes = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    Photo$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    Photo$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Photo$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
