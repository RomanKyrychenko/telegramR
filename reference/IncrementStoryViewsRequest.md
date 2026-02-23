# IncrementStoryViewsRequest R6 class

IncrementStoryViewsRequest R6 class

IncrementStoryViewsRequest R6 class

## Details

Request to increment story views for a peer and a vector of ids. Returns
Bool.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `IncrementStoryViewsRequest`

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

- [`IncrementStoryViewsRequest$new()`](#method-IncrementStoryViewsRequest-new)

- [`IncrementStoryViewsRequest$resolve()`](#method-IncrementStoryViewsRequest-resolve)

- [`IncrementStoryViewsRequest$to_list()`](#method-IncrementStoryViewsRequest-to_list)

- [`IncrementStoryViewsRequest$to_bytes()`](#method-IncrementStoryViewsRequest-to_bytes)

- [`IncrementStoryViewsRequest$clone()`](#method-IncrementStoryViewsRequest-clone)

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

Initialize IncrementStoryViewsRequest

#### Usage

    IncrementStoryViewsRequest$new(peer, id)

#### Arguments

- `peer`:

  TypeInputPeer

- `id`:

  integer vector of story ids

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer references

#### Usage

    IncrementStoryViewsRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity

- `utils`:

  utils with get_input_peer

------------------------------------------------------------------------

### Method `to_list()`

Convert to list

#### Usage

    IncrementStoryViewsRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    IncrementStoryViewsRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    IncrementStoryViewsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
