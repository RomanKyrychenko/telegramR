# WebPage

Telegram API type WebPage

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `WebPage`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`WebPage$new()`](#method-WebPage-new)

- [`WebPage$to_dict()`](#method-WebPage-to_dict)

- [`WebPage$bytes()`](#method-WebPage-bytes)

- [`WebPage$clone()`](#method-WebPage-clone)

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

    WebPage$new(
      id,
      url,
      display_url,
      hash,
      has_large_media = NULL,
      video_cover_photo = NULL,
      type = NULL,
      site_name = NULL,
      title = NULL,
      description = NULL,
      photo = NULL,
      embed_url = NULL,
      embed_type = NULL,
      embed_width = NULL,
      embed_height = NULL,
      duration = NULL,
      author = NULL,
      document = NULL,
      cached_page = NULL,
      attributes = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    WebPage$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    WebPage$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    WebPage$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
