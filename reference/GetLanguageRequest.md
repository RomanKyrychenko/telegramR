# GetLanguageRequest

Telegram API type GetLanguageRequest

## Details

GetLanguageRequest R6 class

TLRequest: GetLanguageRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetLanguageRequest`

## Public fields

- `lang_pack`:

  Field.

- `lang_code`:

  Field.

## Methods

### Public methods

- [`GetLanguageRequest$new()`](#method-GetLanguageRequest-new)

- [`GetLanguageRequest$to_dict()`](#method-GetLanguageRequest-to_dict)

- [`GetLanguageRequest$bytes()`](#method-GetLanguageRequest-bytes)

- [`GetLanguageRequest$from_reader()`](#method-GetLanguageRequest-from_reader)

- [`GetLanguageRequest$clone()`](#method-GetLanguageRequest-clone)

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

Initialize GetLanguageRequest

#### Usage

    GetLanguageRequest$new(lang_pack, lang_code)

#### Arguments

- `lang_pack`:

  character Language pack identifier

- `lang_code`:

  character Language code

------------------------------------------------------------------------

### Method `to_dict()`

Convert to a serializable R list (similar to to_dict)

#### Usage

    GetLanguageRequest$to_dict()

#### Returns

list

------------------------------------------------------------------------

### Method `bytes()`

Serialize to raw bytes

#### Usage

    GetLanguageRequest$bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Create an instance from a reader

#### Usage

    GetLanguageRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object with method tgread_string()

#### Returns

A GetLanguageRequest object

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetLanguageRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
