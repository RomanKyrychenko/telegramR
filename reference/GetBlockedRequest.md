# GetBlockedRequest

Methods: - initialize(offset, limit, my_stories_from = NULL): create new
request - to_list(): return list representation - to_bytes(): serialize
to raw TL bytes

## Details

R6 representation of the TL request: GetBlockedRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetBlockedRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `offset`:

  Field.

- `limit`:

  Field.

- `my_stories_from`:

  Field.

## Methods

### Public methods

- [`GetBlockedRequest$new()`](#method-GetBlockedRequest-new)

- [`GetBlockedRequest$to_list()`](#method-GetBlockedRequest-to_list)

- [`GetBlockedRequest$to_bytes()`](#method-GetBlockedRequest-to_bytes)

- [`GetBlockedRequest$clone()`](#method-GetBlockedRequest-clone)

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

Initialize GetBlockedRequest

#### Usage

    GetBlockedRequest$new(offset, limit, my_stories_from = NULL)

#### Arguments

- `offset`:

  integer

- `limit`:

  integer

- `my_stories_from`:

  logical or NULL Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetBlockedRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

Packs flags (uint32 little-endian) and offset/limit as int32
little-endian.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetBlockedRequest$to_bytes()

#### Returns

raw Convert integer to little-endian raw vector of given size (bytes)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetBlockedRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
