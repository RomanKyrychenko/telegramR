# GetPinnedStoriesRequest R6 class

GetPinnedStoriesRequest R6 class

GetPinnedStoriesRequest R6 class

## Details

Request to get pinned stories for a peer with pagination (offset_id,
limit). Returns stories.Stories.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetPinnedStoriesRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `offset_id`:

  Field.

- `limit`:

  Field.

## Methods

### Public methods

- [`GetPinnedStoriesRequest$new()`](#method-GetPinnedStoriesRequest-new)

- [`GetPinnedStoriesRequest$resolve()`](#method-GetPinnedStoriesRequest-resolve)

- [`GetPinnedStoriesRequest$to_list()`](#method-GetPinnedStoriesRequest-to_list)

- [`GetPinnedStoriesRequest$to_bytes()`](#method-GetPinnedStoriesRequest-to_bytes)

- [`GetPinnedStoriesRequest$clone()`](#method-GetPinnedStoriesRequest-clone)

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

------------------------------------------------------------------------

### Method `new()`

Initialize GetPinnedStoriesRequest

#### Usage

    GetPinnedStoriesRequest$new(peer, offset_id, limit)

#### Arguments

- `peer`:

  TypeInputPeer

- `offset_id`:

  integer offset id

- `limit`:

  integer limit

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer references

Convert high-level peer reference to input peer using client/utils.

#### Usage

    GetPinnedStoriesRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity

- `utils`:

  utils with get_input_peer

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert to list

#### Usage

    GetPinnedStoriesRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    GetPinnedStoriesRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetPinnedStoriesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
