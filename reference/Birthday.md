# Birthday

Telegram API type Birthday

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `Birthday`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `day`:

  Field.

- `month`:

  Field.

- `year`:

  Field.

## Methods

### Public methods

- [`Birthday$new()`](#method-Birthday-new)

- [`Birthday$to_dict()`](#method-Birthday-to_dict)

- [`Birthday$bytes()`](#method-Birthday-bytes)

- [`Birthday$clone()`](#method-Birthday-clone)

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

Initializes the Birthday with the given parameters.

#### Usage

    Birthday$new(day, month, year = NULL)

#### Arguments

- `day`:

  An integer representing the day.

- `month`:

  An integer representing the month.

- `year`:

  An integer representing the year. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the Birthday object to a list (dictionary).

#### Usage

    Birthday$to_dict()

#### Returns

A list representation of the Birthday object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the Birthday object to bytes.

#### Usage

    Birthday$bytes()

#### Returns

A raw vector representing the serialized bytes of the Birthday object.
Reads a Birthday object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Birthday$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
