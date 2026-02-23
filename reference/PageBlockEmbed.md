# PageBlockEmbed

Telegram API type PageBlockEmbed

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PageBlockEmbed`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `caption`:

  Field.

- `full_width`:

  Field.

- `allow_scrolling`:

  Field.

- `url`:

  Field.

- `html`:

  Field.

- `poster_photo_id`:

  Field.

- `w`:

  Field.

- `h`:

  Field.

## Methods

### Public methods

- [`PageBlockEmbed$new()`](#method-PageBlockEmbed-new)

- [`PageBlockEmbed$to_dict()`](#method-PageBlockEmbed-to_dict)

- [`PageBlockEmbed$bytes()`](#method-PageBlockEmbed-bytes)

- [`PageBlockEmbed$clone()`](#method-PageBlockEmbed-clone)

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

    PageBlockEmbed$new(
      caption = NULL,
      full_width = NULL,
      allow_scrolling = NULL,
      url = NULL,
      html = NULL,
      poster_photo_id = NULL,
      w = NULL,
      h = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PageBlockEmbed$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PageBlockEmbed$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PageBlockEmbed$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
