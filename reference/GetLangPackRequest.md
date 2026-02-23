# GetLangPackRequest

Telegram API type GetLangPackRequest

## Details

GetLangPackRequest R6 class

TLRequest: GetLangPackRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetLangPackRequest`

## Public fields

- `lang_pack`:

  Field.

- `lang_code`:

  Field.

## Methods

### Public methods

- [`GetLangPackRequest$new()`](#method-GetLangPackRequest-new)

- [`GetLangPackRequest$to_dict()`](#method-GetLangPackRequest-to_dict)

- [`GetLangPackRequest$bytes()`](#method-GetLangPackRequest-bytes)

- [`GetLangPackRequest$from_reader()`](#method-GetLangPackRequest-from_reader)

- [`GetLangPackRequest$clone()`](#method-GetLangPackRequest-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize GetLangPackRequest

#### Usage

    GetLangPackRequest$new(lang_pack, lang_code)

#### Arguments

- `lang_pack`:

  character Language pack identifier

- `lang_code`:

  character Language code

------------------------------------------------------------------------

### Method `to_dict()`

Convert to a serializable R list (similar to to_dict)

#### Usage

    GetLangPackRequest$to_dict()

#### Returns

list

------------------------------------------------------------------------

### Method `bytes()`

Serialize to raw bytes

#### Usage

    GetLangPackRequest$bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Create an instance from a reader

#### Usage

    GetLangPackRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object with method tgread_string()

#### Returns

A GetLangPackRequest object

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetLangPackRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
