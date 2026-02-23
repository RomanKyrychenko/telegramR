# InputMediaDocument

Telegram API type InputMediaDocument

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputMediaDocument`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `spoiler`:

  Field.

- `video_cover`:

  Field.

- `video_timestamp`:

  Field.

- `ttl_seconds`:

  Field.

- `query`:

  Field.

## Methods

### Public methods

- [`InputMediaDocument$new()`](#method-InputMediaDocument-new)

- [`InputMediaDocument$to_dict()`](#method-InputMediaDocument-to_dict)

- [`InputMediaDocument$bytes()`](#method-InputMediaDocument-bytes)

- [`InputMediaDocument$clone()`](#method-InputMediaDocument-clone)

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

    InputMediaDocument$new(
      id,
      spoiler = NULL,
      video_cover = NULL,
      video_timestamp = NULL,
      ttl_seconds = NULL,
      query = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputMediaDocument$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputMediaDocument$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputMediaDocument$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
