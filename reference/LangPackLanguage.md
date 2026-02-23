# LangPackLanguage

Telegram API type LangPackLanguage

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `LangPackLanguage`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `name`:

  Field.

- `native_name`:

  Field.

- `lang_code`:

  Field.

- `plural_code`:

  Field.

- `strings_count`:

  Field.

- `translated_count`:

  Field.

- `translations_url`:

  Field.

- `official`:

  Field.

- `rtl`:

  Field.

- `beta`:

  Field.

- `base_lang_code`:

  Field.

## Methods

### Public methods

- [`LangPackLanguage$new()`](#method-LangPackLanguage-new)

- [`LangPackLanguage$to_dict()`](#method-LangPackLanguage-to_dict)

- [`LangPackLanguage$bytes()`](#method-LangPackLanguage-bytes)

- [`LangPackLanguage$clone()`](#method-LangPackLanguage-clone)

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

    LangPackLanguage$new(
      name,
      native_name,
      lang_code,
      plural_code,
      strings_count,
      translated_count,
      translations_url,
      official = NULL,
      rtl = NULL,
      beta = NULL,
      base_lang_code = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    LangPackLanguage$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    LangPackLanguage$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LangPackLanguage$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
