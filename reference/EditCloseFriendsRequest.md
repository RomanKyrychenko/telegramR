# EditCloseFriendsRequest

Methods: - initialize(id): create new request where id is a numeric
vector of 64-bit integers - to_list(): return list representation -
to_bytes(): serialize to raw TL bytes (constructor + vector + int64
items)

## Details

R6 representation of the TL request: EditCloseFriendsRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `EditCloseFriendsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

## Methods

### Public methods

- [`EditCloseFriendsRequest$new()`](#method-EditCloseFriendsRequest-new)

- [`EditCloseFriendsRequest$to_list()`](#method-EditCloseFriendsRequest-to_list)

- [`EditCloseFriendsRequest$to_bytes()`](#method-EditCloseFriendsRequest-to_bytes)

- [`EditCloseFriendsRequest$clone()`](#method-EditCloseFriendsRequest-clone)

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

Initialize EditCloseFriendsRequest

#### Usage

    EditCloseFriendsRequest$new(id)

#### Arguments

- `id`:

  numeric vector (64-bit integers) Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    EditCloseFriendsRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

Packs constructor id, vector constructor, count and 64-bit little-endian
items.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    EditCloseFriendsRequest$to_bytes()

#### Returns

raw Convert integer to little-endian raw vector of given size (bytes)
Convert 64-bit numeric to little-endian raw (8 bytes)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EditCloseFriendsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
