# GetStoriesViewsRequest R6 class

GetStoriesViewsRequest R6 class

GetStoriesViewsRequest R6 class

## Details

Request to get story views for a peer and a vector of story ids. Returns
stories.StoryViews.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetStoriesViewsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `id`:

  Field.

## Methods

### Public methods

- [`GetStoriesViewsRequest$new()`](#method-GetStoriesViewsRequest-new)

- [`GetStoriesViewsRequest$resolve()`](#method-GetStoriesViewsRequest-resolve)

- [`GetStoriesViewsRequest$to_list()`](#method-GetStoriesViewsRequest-to_list)

- [`GetStoriesViewsRequest$to_bytes()`](#method-GetStoriesViewsRequest-to_bytes)

- [`GetStoriesViewsRequest$clone()`](#method-GetStoriesViewsRequest-clone)

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

Initialize GetStoriesViewsRequest

#### Usage

    GetStoriesViewsRequest$new(peer, id)

#### Arguments

- `peer`:

  TypeInputPeer

- `id`:

  integer vector of story ids

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer references

Convert high-level peer reference to input peer using client/utils.

#### Usage

    GetStoriesViewsRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity

- `utils`:

  utils with get_input_peer

------------------------------------------------------------------------

### Method `to_list()`

Convert to list

#### Usage

    GetStoriesViewsRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    GetStoriesViewsRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetStoriesViewsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
