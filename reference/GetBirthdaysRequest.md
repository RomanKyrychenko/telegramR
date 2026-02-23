# GetBirthdaysRequest

Methods: - initialize(): create new request - to_list(): return list
representation - to_bytes(): serialize to raw TL bytes

## Details

R6 representation of the TL request: GetBirthdaysRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetBirthdaysRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

## Methods

### Public methods

- [`GetBirthdaysRequest$new()`](#method-GetBirthdaysRequest-new)

- [`GetBirthdaysRequest$to_list()`](#method-GetBirthdaysRequest-to_list)

- [`GetBirthdaysRequest$to_bytes()`](#method-GetBirthdaysRequest-to_bytes)

- [`GetBirthdaysRequest$clone()`](#method-GetBirthdaysRequest-clone)

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

Initialize GetBirthdaysRequest Convert to list Serialize to bytes (raw
vector)

#### Usage

    GetBirthdaysRequest$new()

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetBirthdaysRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetBirthdaysRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetBirthdaysRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
