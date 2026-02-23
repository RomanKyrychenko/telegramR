# GetConnectedStarRefBotsRequest

Telegram API type GetConnectedStarRefBotsRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetConnectedStarRefBotsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `limit`:

  Field.

- `offset_date`:

  Field.

- `offset_link`:

  Field.

## Methods

### Public methods

- [`GetConnectedStarRefBotsRequest$new()`](#method-GetConnectedStarRefBotsRequest-new)

- [`GetConnectedStarRefBotsRequest$resolve()`](#method-GetConnectedStarRefBotsRequest-resolve)

- [`GetConnectedStarRefBotsRequest$to_dict()`](#method-GetConnectedStarRefBotsRequest-to_dict)

- [`GetConnectedStarRefBotsRequest$bytes()`](#method-GetConnectedStarRefBotsRequest-bytes)

- [`GetConnectedStarRefBotsRequest$from_reader()`](#method-GetConnectedStarRefBotsRequest-from_reader)

- [`GetConnectedStarRefBotsRequest$clone()`](#method-GetConnectedStarRefBotsRequest-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize the GetConnectedStarRefBotsRequest object.

#### Usage

    GetConnectedStarRefBotsRequest$new(
      peer,
      limit,
      offset_date = NULL,
      offset_link = NULL
    )

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

- `limit`:

  The limit integer.

- `offset_date`:

  Optional offset date (datetime).

- `offset_link`:

  Optional offset link (string).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    GetConnectedStarRefBotsRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    GetConnectedStarRefBotsRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetConnectedStarRefBotsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    GetConnectedStarRefBotsRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetConnectedStarRefBotsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetConnectedStarRefBotsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
