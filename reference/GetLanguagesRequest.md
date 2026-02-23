# GetLanguagesRequest

Telegram API type GetLanguagesRequest

## Details

GetLanguagesRequest R6 class

TLRequest: GetLanguagesRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetLanguagesRequest`

## Public fields

- `lang_pack`:

  Field.

## Methods

### Public methods

- [`GetLanguagesRequest$new()`](#method-GetLanguagesRequest-new)

- [`GetLanguagesRequest$to_dict()`](#method-GetLanguagesRequest-to_dict)

- [`GetLanguagesRequest$bytes()`](#method-GetLanguagesRequest-bytes)

- [`GetLanguagesRequest$from_reader()`](#method-GetLanguagesRequest-from_reader)

- [`GetLanguagesRequest$clone()`](#method-GetLanguagesRequest-clone)

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

Initialize GetLanguagesRequest

#### Usage

    GetLanguagesRequest$new(lang_pack)

#### Arguments

- `lang_pack`:

  character Language pack identifier

------------------------------------------------------------------------

### Method `to_dict()`

Convert to a serializable R list (similar to to_dict)

#### Usage

    GetLanguagesRequest$to_dict()

#### Returns

list

------------------------------------------------------------------------

### Method `bytes()`

Serialize to raw bytes

#### Usage

    GetLanguagesRequest$bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Create an instance from a reader

#### Usage

    GetLanguagesRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object with method tgread_string()

#### Returns

A GetLanguagesRequest object

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetLanguagesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
