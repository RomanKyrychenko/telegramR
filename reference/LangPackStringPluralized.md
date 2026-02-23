# LangPackStringPluralized

Telegram API type LangPackStringPluralized

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `LangPackStringPluralized`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `key`:

  Field.

- `other_value`:

  Field.

- `zero_value`:

  Field.

- `one_value`:

  Field.

- `two_value`:

  Field.

- `few_value`:

  Field.

- `many_value`:

  Field.

## Methods

### Public methods

- [`LangPackStringPluralized$new()`](#method-LangPackStringPluralized-new)

- [`LangPackStringPluralized$to_dict()`](#method-LangPackStringPluralized-to_dict)

- [`LangPackStringPluralized$bytes()`](#method-LangPackStringPluralized-bytes)

- [`LangPackStringPluralized$clone()`](#method-LangPackStringPluralized-clone)

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

    LangPackStringPluralized$new(
      key,
      other_value,
      zero_value = NULL,
      one_value = NULL,
      two_value = NULL,
      few_value = NULL,
      many_value = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    LangPackStringPluralized$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    LangPackStringPluralized$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LangPackStringPluralized$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
