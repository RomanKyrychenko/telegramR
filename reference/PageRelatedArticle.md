# PageRelatedArticle

Telegram API type PageRelatedArticle

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PageRelatedArticle`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `url`:

  Field.

- `webpage_id`:

  Field.

- `title`:

  Field.

- `description`:

  Field.

- `photo_id`:

  Field.

- `author`:

  Field.

- `published_date`:

  Field.

## Methods

### Public methods

- [`PageRelatedArticle$new()`](#method-PageRelatedArticle-new)

- [`PageRelatedArticle$to_dict()`](#method-PageRelatedArticle-to_dict)

- [`PageRelatedArticle$bytes()`](#method-PageRelatedArticle-bytes)

- [`PageRelatedArticle$clone()`](#method-PageRelatedArticle-clone)

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

    PageRelatedArticle$new(
      url = NULL,
      webpage_id = NULL,
      title = NULL,
      description = NULL,
      photo_id = NULL,
      author = NULL,
      published_date = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PageRelatedArticle$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PageRelatedArticle$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PageRelatedArticle$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
