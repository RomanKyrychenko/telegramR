# GetStoriesArchiveRequest R6 class

GetStoriesArchiveRequest R6 class

GetStoriesArchiveRequest R6 class

## Details

Request to get archived stories for a peer with pagination (offset_id,
limit). Returns stories.Stories.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetStoriesArchiveRequest`

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

- [`GetStoriesArchiveRequest$new()`](#method-GetStoriesArchiveRequest-new)

- [`GetStoriesArchiveRequest$resolve()`](#method-GetStoriesArchiveRequest-resolve)

- [`GetStoriesArchiveRequest$to_list()`](#method-GetStoriesArchiveRequest-to_list)

- [`GetStoriesArchiveRequest$to_bytes()`](#method-GetStoriesArchiveRequest-to_bytes)

- [`GetStoriesArchiveRequest$clone()`](#method-GetStoriesArchiveRequest-clone)

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

Initialize GetStoriesArchiveRequest

#### Usage

    GetStoriesArchiveRequest$new(peer, offset_id, limit)

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

    GetStoriesArchiveRequest$resolve(client, utils)

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

    GetStoriesArchiveRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    GetStoriesArchiveRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetStoriesArchiveRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
