# PageBlockPhoto

Telegram API type PageBlockPhoto

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PageBlockPhoto`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `photo_id`:

  Field.

- `caption`:

  Field.

- `url`:

  Field.

- `webpage_id`:

  Field.

## Methods

### Public methods

- [`PageBlockPhoto$new()`](#method-PageBlockPhoto-new)

- [`PageBlockPhoto$to_dict()`](#method-PageBlockPhoto-to_dict)

- [`PageBlockPhoto$bytes()`](#method-PageBlockPhoto-bytes)

- [`PageBlockPhoto$clone()`](#method-PageBlockPhoto-clone)

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

    PageBlockPhoto$new(
      photo_id = NULL,
      caption = NULL,
      url = NULL,
      webpage_id = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PageBlockPhoto$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PageBlockPhoto$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PageBlockPhoto$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
