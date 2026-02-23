# GetConnectedStarRefBotRequest

Telegram API type GetConnectedStarRefBotRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetConnectedStarRefBotRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `bot`:

  Field.

## Methods

### Public methods

- [`GetConnectedStarRefBotRequest$new()`](#method-GetConnectedStarRefBotRequest-new)

- [`GetConnectedStarRefBotRequest$resolve()`](#method-GetConnectedStarRefBotRequest-resolve)

- [`GetConnectedStarRefBotRequest$to_dict()`](#method-GetConnectedStarRefBotRequest-to_dict)

- [`GetConnectedStarRefBotRequest$bytes()`](#method-GetConnectedStarRefBotRequest-bytes)

- [`GetConnectedStarRefBotRequest$from_reader()`](#method-GetConnectedStarRefBotRequest-from_reader)

- [`GetConnectedStarRefBotRequest$clone()`](#method-GetConnectedStarRefBotRequest-clone)

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

Initialize the GetConnectedStarRefBotRequest object.

#### Usage

    GetConnectedStarRefBotRequest$new(peer, bot)

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

- `bot`:

  The input user (TypeInputUser).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer and bot using client and utils.

#### Usage

    GetConnectedStarRefBotRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    GetConnectedStarRefBotRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetConnectedStarRefBotRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    GetConnectedStarRefBotRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetConnectedStarRefBotRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetConnectedStarRefBotRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
