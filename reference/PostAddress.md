# PostAddress

Telegram API type PostAddress

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PostAddress`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `street_line1`:

  Field.

- `street_line2`:

  Field.

- `city`:

  Field.

- `state`:

  Field.

- `country_iso2`:

  Field.

- `post_code`:

  Field.

## Methods

### Public methods

- [`PostAddress$new()`](#method-PostAddress-new)

- [`PostAddress$to_dict()`](#method-PostAddress-to_dict)

- [`PostAddress$bytes()`](#method-PostAddress-bytes)

- [`PostAddress$clone()`](#method-PostAddress-clone)

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

    PostAddress$new(
      street_line1 = NULL,
      street_line2 = NULL,
      city = NULL,
      state = NULL,
      country_iso2 = NULL,
      post_code = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PostAddress$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PostAddress$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PostAddress$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
