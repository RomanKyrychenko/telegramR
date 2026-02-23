# PageBlockEmbedPost

Telegram API type PageBlockEmbedPost

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PageBlockEmbedPost`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `url`:

  Field.

- `webpage_id`:

  Field.

- `author_photo_id`:

  Field.

- `author`:

  Field.

- `date`:

  Field.

- `blocks`:

  Field.

- `caption`:

  Field.

## Methods

### Public methods

- [`PageBlockEmbedPost$new()`](#method-PageBlockEmbedPost-new)

- [`PageBlockEmbedPost$to_dict()`](#method-PageBlockEmbedPost-to_dict)

- [`PageBlockEmbedPost$bytes()`](#method-PageBlockEmbedPost-bytes)

- [`PageBlockEmbedPost$clone()`](#method-PageBlockEmbedPost-clone)

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

    PageBlockEmbedPost$new(
      url = NULL,
      webpage_id = NULL,
      author_photo_id = NULL,
      author = NULL,
      date = NULL,
      blocks = list(),
      caption = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PageBlockEmbedPost$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PageBlockEmbedPost$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PageBlockEmbedPost$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
