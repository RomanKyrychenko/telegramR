# GetStringsRequest

Telegram API type GetStringsRequest

## Details

GetStringsRequest R6 class

TLRequest: GetStringsRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetStringsRequest`

## Public fields

- `lang_pack`:

  Field.

- `lang_code`:

  Field.

- `keys`:

  Field.

## Methods

### Public methods

- [`GetStringsRequest$new()`](#method-GetStringsRequest-new)

- [`GetStringsRequest$to_dict()`](#method-GetStringsRequest-to_dict)

- [`GetStringsRequest$bytes()`](#method-GetStringsRequest-bytes)

- [`GetStringsRequest$from_reader()`](#method-GetStringsRequest-from_reader)

- [`GetStringsRequest$clone()`](#method-GetStringsRequest-clone)

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

Initialize GetStringsRequest

#### Usage

    GetStringsRequest$new(lang_pack, lang_code, keys)

#### Arguments

- `lang_pack`:

  character Language pack identifier

- `lang_code`:

  character Language code

- `keys`:

  character Vector of keys to request

------------------------------------------------------------------------

### Method `to_dict()`

Convert to a serializable R list (similar to to_dict)

#### Usage

    GetStringsRequest$to_dict()

#### Returns

list

------------------------------------------------------------------------

### Method `bytes()`

Serialize to raw bytes

#### Usage

    GetStringsRequest$bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Create an instance from a reader

#### Usage

    GetStringsRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object with methods tgread_string() and read_int()

#### Returns

A GetStringsRequest object

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetStringsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
