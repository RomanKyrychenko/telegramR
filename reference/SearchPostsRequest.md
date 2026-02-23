# SearchPostsRequest

Represents a request to search for posts with specified parameters.

## Details

Represents a TL request to search posts/stories (by hashtag/area/peer).

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SearchPostsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `offset_rate`:

  Field.

- `offset_peer`:

  Field.

- `offset_id`:

  Field.

- `limit`:

  Field.

- `hashtag`:

  Field.

- `query`:

  Field.

- `allow_paid_stars`:

  Field.

- `class`:

  Field.

## Active bindings

- `offset_rate`:

  Field.

- `offset_peer`:

  Field.

- `offset_id`:

  Field.

- `query`:

  Field.

- `allow_paid_stars`:

  Field.

- `class`:

  Field.

## Methods

### Public methods

- [`SearchPostsRequest$new()`](#method-SearchPostsRequest-new)

- [`SearchPostsRequest$resolve()`](#method-SearchPostsRequest-resolve)

- [`SearchPostsRequest$to_list()`](#method-SearchPostsRequest-to_list)

- [`SearchPostsRequest$to_bytes()`](#method-SearchPostsRequest-to_bytes)

- [`SearchPostsRequest$clone()`](#method-SearchPostsRequest-clone)

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

#### Usage

    SearchPostsRequest$new(offset, limit, hashtag = NULL, area = NULL, peer = NULL)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    SearchPostsRequest$resolve(client, utils)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    SearchPostsRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    SearchPostsRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SearchPostsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SearchPostsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `offset`:

  Field.

- `limit`:

  Field.

- `hashtag`:

  Field.

- `area`:

  Field.

- `peer`:

  Field.

## Methods

### Public methods

- [`SearchPostsRequest$new()`](#method-SearchPostsRequest-new)

- [`SearchPostsRequest$resolve()`](#method-SearchPostsRequest-resolve)

- [`SearchPostsRequest$to_list()`](#method-SearchPostsRequest-to_list)

- [`SearchPostsRequest$to_bytes()`](#method-SearchPostsRequest-to_bytes)

- [`SearchPostsRequest$clone()`](#method-SearchPostsRequest-clone)

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

Initialize SearchPostsRequest

#### Usage

    SearchPostsRequest$new(offset, limit, hashtag = NULL, area = NULL, peer = NULL)

#### Arguments

- `offset`:

  character

- `limit`:

  integer

- `hashtag`:

  character or NULL

- `area`:

  TypeMediaArea or NULL

- `peer`:

  TypeInputPeer or NULL

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer/area references

#### Usage

    SearchPostsRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity

- `utils`:

  utils with get_input_peer/get_input_media_area (area expected as TL
  object normally)

------------------------------------------------------------------------

### Method `to_list()`

Convert to list

#### Usage

    SearchPostsRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    SearchPostsRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SearchPostsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
