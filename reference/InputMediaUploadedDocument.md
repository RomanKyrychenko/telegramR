# InputMediaUploadedDocument

Telegram API type InputMediaUploadedDocument

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputMediaUploadedDocument`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `file`:

  Field.

- `mime_type`:

  Field.

- `attributes`:

  Field.

- `nosound_video`:

  Field.

- `force_file`:

  Field.

- `spoiler`:

  Field.

- `thumb`:

  Field.

- `stickers`:

  Field.

- `video_cover`:

  Field.

- `video_timestamp`:

  Field.

- `ttl_seconds`:

  Field.

## Methods

### Public methods

- [`InputMediaUploadedDocument$new()`](#method-InputMediaUploadedDocument-new)

- [`InputMediaUploadedDocument$to_dict()`](#method-InputMediaUploadedDocument-to_dict)

- [`InputMediaUploadedDocument$bytes()`](#method-InputMediaUploadedDocument-bytes)

- [`InputMediaUploadedDocument$clone()`](#method-InputMediaUploadedDocument-clone)

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

    InputMediaUploadedDocument$new(
      file,
      mime_type,
      attributes,
      nosound_video = NULL,
      force_file = NULL,
      spoiler = NULL,
      thumb = NULL,
      stickers = NULL,
      video_cover = NULL,
      video_timestamp = NULL,
      ttl_seconds = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputMediaUploadedDocument$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputMediaUploadedDocument$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputMediaUploadedDocument$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
