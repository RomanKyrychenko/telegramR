# LangPackDifference

Telegram API type LangPackDifference

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `LangPackDifference`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `lang_code`:

  Field.

- `from_version`:

  Field.

- `version`:

  Field.

- `strings`:

  Field.

## Methods

### Public methods

- [`LangPackDifference$new()`](#method-LangPackDifference-new)

- [`LangPackDifference$to_dict()`](#method-LangPackDifference-to_dict)

- [`LangPackDifference$bytes()`](#method-LangPackDifference-bytes)

- [`LangPackDifference$clone()`](#method-LangPackDifference-clone)

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

    LangPackDifference$new(lang_code, from_version, version, strings)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    LangPackDifference$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    LangPackDifference$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LangPackDifference$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
