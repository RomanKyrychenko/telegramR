# PageBlockDetails

Telegram API type PageBlockDetails

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PageBlockDetails`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `blocks`:

  Field.

- `title`:

  Field.

- `open`:

  Field.

## Methods

### Public methods

- [`PageBlockDetails$new()`](#method-PageBlockDetails-new)

- [`PageBlockDetails$to_dict()`](#method-PageBlockDetails-to_dict)

- [`PageBlockDetails$bytes()`](#method-PageBlockDetails-bytes)

- [`PageBlockDetails$clone()`](#method-PageBlockDetails-clone)

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

    PageBlockDetails$new(blocks = list(), title = NULL, open = NULL)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PageBlockDetails$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PageBlockDetails$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PageBlockDetails$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
