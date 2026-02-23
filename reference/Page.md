# Page

Telegram API type Page

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `Page`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `url`:

  Field.

- `blocks`:

  Field.

- `photos`:

  Field.

- `documents`:

  Field.

- `part`:

  Field.

- `rtl`:

  Field.

- `v2`:

  Field.

- `views`:

  Field.

## Methods

### Public methods

- [`Page$new()`](#method-Page-new)

- [`Page$to_dict()`](#method-Page-to_dict)

- [`Page$bytes()`](#method-Page-bytes)

- [`Page$clone()`](#method-Page-clone)

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

    Page$new(
      url = NULL,
      blocks = list(),
      photos = list(),
      documents = list(),
      part = NULL,
      rtl = NULL,
      v2 = NULL,
      views = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    Page$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    Page$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Page$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
