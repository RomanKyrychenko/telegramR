# SearchGlobalRequest

Represents a request to search globally. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SearchGlobalRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`SearchGlobalRequest$new()`](#method-SearchGlobalRequest-new)

- [`SearchGlobalRequest$resolve()`](#method-SearchGlobalRequest-resolve)

- [`SearchGlobalRequest$to_dict()`](#method-SearchGlobalRequest-to_dict)

- [`SearchGlobalRequest$bytes()`](#method-SearchGlobalRequest-bytes)

- [`SearchGlobalRequest$clone()`](#method-SearchGlobalRequest-clone)

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

Initialize the SearchGlobalRequest object.

#### Usage

    SearchGlobalRequest$new(
      q,
      filter,
      min_date = NULL,
      max_date = NULL,
      offset_rate,
      offset_peer,
      offset_id,
      limit,
      broadcasts_only = NULL,
      groups_only = NULL,
      users_only = NULL,
      folder_id = NULL
    )

#### Arguments

- `q`:

  The search query string.

- `filter`:

  The messages filter.

- `min_date`:

  Optional minimum date.

- `max_date`:

  Optional maximum date.

- `offset_rate`:

  The offset rate.

- `offset_peer`:

  The offset peer.

- `offset_id`:

  The offset ID.

- `limit`:

  The limit for results.

- `broadcasts_only`:

  Optional broadcasts only flag.

- `groups_only`:

  Optional groups only flag.

- `users_only`:

  Optional users only flag.

- `folder_id`:

  Optional folder ID.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    SearchGlobalRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    SearchGlobalRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    SearchGlobalRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SearchGlobalRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
