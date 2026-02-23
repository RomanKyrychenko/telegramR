# PageBlockTable

Telegram API type PageBlockTable

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PageBlockTable`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `title`:

  Field.

- `rows`:

  Field.

- `bordered`:

  Field.

- `striped`:

  Field.

## Methods

### Public methods

- [`PageBlockTable$new()`](#method-PageBlockTable-new)

- [`PageBlockTable$to_dict()`](#method-PageBlockTable-to_dict)

- [`PageBlockTable$bytes()`](#method-PageBlockTable-bytes)

- [`PageBlockTable$clone()`](#method-PageBlockTable-clone)

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

    PageBlockTable$new(
      title = NULL,
      rows = list(),
      bordered = NULL,
      striped = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PageBlockTable$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PageBlockTable$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PageBlockTable$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
