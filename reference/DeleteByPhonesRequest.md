# DeleteByPhonesRequest

Methods: - initialize(phones): create new request where phones is a
character vector - to_list(): return list representation - to_bytes():
serialize to raw TL bytes (constructor + vector + strings)

## Details

R6 representation of the TL request: DeleteByPhonesRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `DeleteByPhonesRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `phones`:

  Field.

## Methods

### Public methods

- [`DeleteByPhonesRequest$new()`](#method-DeleteByPhonesRequest-new)

- [`DeleteByPhonesRequest$to_list()`](#method-DeleteByPhonesRequest-to_list)

- [`DeleteByPhonesRequest$to_bytes()`](#method-DeleteByPhonesRequest-to_bytes)

- [`DeleteByPhonesRequest$clone()`](#method-DeleteByPhonesRequest-clone)

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
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize DeleteByPhonesRequest

#### Usage

    DeleteByPhonesRequest$new(phones)

#### Arguments

- `phones`:

  character vector of phone strings Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    DeleteByPhonesRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

Packs constructor id, TL vector constructor, count and serialized TL
strings.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    DeleteByPhonesRequest$to_bytes()

#### Returns

raw Convert integer to little-endian raw vector of given size (bytes)
Serialize an R string to TL string bytes (per Telegram TL encoding)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DeleteByPhonesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
