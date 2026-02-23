# PageBlockVideo

Telegram API type PageBlockVideo

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PageBlockVideo`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `video_id`:

  Field.

- `caption`:

  Field.

- `autoplay`:

  Field.

- `loop`:

  Field.

## Methods

### Public methods

- [`PageBlockVideo$new()`](#method-PageBlockVideo-new)

- [`PageBlockVideo$to_dict()`](#method-PageBlockVideo-to_dict)

- [`PageBlockVideo$bytes()`](#method-PageBlockVideo-bytes)

- [`PageBlockVideo$clone()`](#method-PageBlockVideo-clone)

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

    PageBlockVideo$new(
      video_id = NULL,
      caption = NULL,
      autoplay = NULL,
      loop = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PageBlockVideo$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PageBlockVideo$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PageBlockVideo$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
