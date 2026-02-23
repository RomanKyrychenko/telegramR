# MessageEntityUnderline

Telegram API type MessageEntityUnderline

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageEntityUnderline`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `offset`:

  Field.

- `length`:

  Field.

## Methods

### Public methods

- [`MessageEntityUnderline$new()`](#method-MessageEntityUnderline-new)

- [`MessageEntityUnderline$to_dict()`](#method-MessageEntityUnderline-to_dict)

- [`MessageEntityUnderline$bytes()`](#method-MessageEntityUnderline-bytes)

- [`MessageEntityUnderline$clone()`](#method-MessageEntityUnderline-clone)

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

    MessageEntityUnderline$new(offset, length)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageEntityUnderline$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageEntityUnderline$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageEntityUnderline$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
