# InputMediaWebPage

Telegram API type InputMediaWebPage

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputMediaWebPage`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `url`:

  Field.

- `force_large_media`:

  Field.

- `force_small_media`:

  Field.

- `optional`:

  Field.

## Methods

### Public methods

- [`InputMediaWebPage$new()`](#method-InputMediaWebPage-new)

- [`InputMediaWebPage$to_dict()`](#method-InputMediaWebPage-to_dict)

- [`InputMediaWebPage$bytes()`](#method-InputMediaWebPage-bytes)

- [`InputMediaWebPage$clone()`](#method-InputMediaWebPage-clone)

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

    InputMediaWebPage$new(
      url,
      force_large_media = NULL,
      force_small_media = NULL,
      optional = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputMediaWebPage$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputMediaWebPage$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputMediaWebPage$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
