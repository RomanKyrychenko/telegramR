# GetContactIDsRequest

Methods: - initialize(hash): create new request - to_list(): return list
representation - to_bytes(): serialize to raw TL bytes (constructor +
int64 hash) - read_result(reader): static helper to read the result
vector of ints from reader

## Details

R6 representation of the TL request: GetContactIDsRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetContactIDsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `hash`:

  Field.

## Methods

### Public methods

- [`GetContactIDsRequest$new()`](#method-GetContactIDsRequest-new)

- [`GetContactIDsRequest$to_list()`](#method-GetContactIDsRequest-to_list)

- [`GetContactIDsRequest$to_bytes()`](#method-GetContactIDsRequest-to_bytes)

- [`GetContactIDsRequest$clone()`](#method-GetContactIDsRequest-clone)

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

Initialize GetContactIDsRequest

#### Usage

    GetContactIDsRequest$new(hash)

#### Arguments

- `hash`:

  numeric/integer (64-bit) Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetContactIDsRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

Packs constructor id and 64-bit little-endian hash.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetContactIDsRequest$to_bytes()

#### Returns

raw Convert 64-bit numeric to little-endian raw (8 bytes)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetContactIDsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
