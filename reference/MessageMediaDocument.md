# MessageMediaDocument

Telegram API type MessageMediaDocument

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageMediaDocument`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `nopremium`:

  Field.

- `spoiler`:

  Field.

- `video`:

  Field.

- `round`:

  Field.

- `voice`:

  Field.

- `document`:

  Field.

- `alt_documents`:

  Field.

- `video_cover`:

  Field.

- `video_timestamp`:

  Field.

- `ttl_seconds`:

  Field.

## Methods

### Public methods

- [`MessageMediaDocument$new()`](#method-MessageMediaDocument-new)

- [`MessageMediaDocument$to_dict()`](#method-MessageMediaDocument-to_dict)

- [`MessageMediaDocument$bytes()`](#method-MessageMediaDocument-bytes)

- [`MessageMediaDocument$clone()`](#method-MessageMediaDocument-clone)

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

    MessageMediaDocument$new(
      nopremium = NULL,
      spoiler = NULL,
      video = NULL,
      round = NULL,
      voice = NULL,
      document = NULL,
      alt_documents = NULL,
      video_cover = NULL,
      video_timestamp = NULL,
      ttl_seconds = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageMediaDocument$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageMediaDocument$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageMediaDocument$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
