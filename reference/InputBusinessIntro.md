# InputBusinessIntro

Telegram API type InputBusinessIntro

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputBusinessIntro`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `title`:

  Field.

- `description`:

  Field.

- `sticker`:

  Field.

## Methods

### Public methods

- [`InputBusinessIntro$new()`](#method-InputBusinessIntro-new)

- [`InputBusinessIntro$to_dict()`](#method-InputBusinessIntro-to_dict)

- [`InputBusinessIntro$bytes()`](#method-InputBusinessIntro-bytes)

- [`InputBusinessIntro$clone()`](#method-InputBusinessIntro-clone)

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

    InputBusinessIntro$new(title, description, sticker = NULL)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputBusinessIntro$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputBusinessIntro$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputBusinessIntro$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
