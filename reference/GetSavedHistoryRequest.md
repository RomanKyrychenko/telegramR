# GetSavedHistoryRequest

Represents a request to get saved history. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetSavedHistoryRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`GetSavedHistoryRequest$new()`](#method-GetSavedHistoryRequest-new)

- [`GetSavedHistoryRequest$resolve()`](#method-GetSavedHistoryRequest-resolve)

- [`GetSavedHistoryRequest$toDict()`](#method-GetSavedHistoryRequest-toDict)

- [`GetSavedHistoryRequest$bytes()`](#method-GetSavedHistoryRequest-bytes)

- [`GetSavedHistoryRequest$clone()`](#method-GetSavedHistoryRequest-clone)

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

Initialize the GetSavedHistoryRequest object.

#### Usage

    GetSavedHistoryRequest$new(
      peer,
      offset_id,
      offset_date,
      add_offset,
      limit,
      max_id,
      min_id,
      hash,
      parent_peer = NULL
    )

#### Arguments

- `peer`:

  The input peer.

- `offset_id`:

  The offset ID.

- `offset_date`:

  The offset date.

- `add_offset`:

  The add offset.

- `limit`:

  The limit.

- `max_id`:

  The maximum ID.

- `min_id`:

  The minimum ID.

- `hash`:

  The hash value.

- `parent_peer`:

  Optional parent peer.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    GetSavedHistoryRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert the object to a dictionary.

#### Usage

    GetSavedHistoryRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetSavedHistoryRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetSavedHistoryRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
