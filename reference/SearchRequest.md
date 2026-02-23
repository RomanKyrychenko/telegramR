# SearchRequest

Represents a request to search messages. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SearchRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`SearchRequest$new()`](#method-SearchRequest-new)

- [`SearchRequest$resolve()`](#method-SearchRequest-resolve)

- [`SearchRequest$to_dict()`](#method-SearchRequest-to_dict)

- [`SearchRequest$bytes()`](#method-SearchRequest-bytes)

- [`SearchRequest$clone()`](#method-SearchRequest-clone)

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
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize the SearchRequest object.

#### Usage

    SearchRequest$new(
      peer,
      q,
      filter,
      min_date = NULL,
      max_date = NULL,
      offset_id,
      add_offset,
      limit,
      max_id,
      min_id,
      hash,
      from_id = NULL,
      saved_peer_id = NULL,
      saved_reaction = NULL,
      top_msg_id = NULL
    )

#### Arguments

- `peer`:

  The input peer.

- `q`:

  The search query string.

- `filter`:

  The messages filter.

- `min_date`:

  Optional minimum date.

- `max_date`:

  Optional maximum date.

- `offset_id`:

  The offset ID.

- `add_offset`:

  The additional offset.

- `limit`:

  The limit for results.

- `max_id`:

  The maximum ID.

- `min_id`:

  The minimum ID.

- `hash`:

  The hash for caching.

- `from_id`:

  Optional input peer for from ID.

- `saved_peer_id`:

  Optional input peer for saved peer ID.

- `saved_reaction`:

  Optional list of reactions.

- `top_msg_id`:

  Optional top message ID.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    SearchRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    SearchRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    SearchRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SearchRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
