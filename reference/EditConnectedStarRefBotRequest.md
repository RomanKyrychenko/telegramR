# EditConnectedStarRefBotRequest

Telegram API type EditConnectedStarRefBotRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `EditConnectedStarRefBotRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `link`:

  Field.

- `revoked`:

  Field.

## Methods

### Public methods

- [`EditConnectedStarRefBotRequest$new()`](#method-EditConnectedStarRefBotRequest-new)

- [`EditConnectedStarRefBotRequest$resolve()`](#method-EditConnectedStarRefBotRequest-resolve)

- [`EditConnectedStarRefBotRequest$to_dict()`](#method-EditConnectedStarRefBotRequest-to_dict)

- [`EditConnectedStarRefBotRequest$bytes()`](#method-EditConnectedStarRefBotRequest-bytes)

- [`EditConnectedStarRefBotRequest$from_reader()`](#method-EditConnectedStarRefBotRequest-from_reader)

- [`EditConnectedStarRefBotRequest$clone()`](#method-EditConnectedStarRefBotRequest-clone)

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

Initialize the EditConnectedStarRefBotRequest object.

#### Usage

    EditConnectedStarRefBotRequest$new(peer, link, revoked = NULL)

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

- `link`:

  The link string.

- `revoked`:

  Optional boolean flag indicating if revoked.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    EditConnectedStarRefBotRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    EditConnectedStarRefBotRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    EditConnectedStarRefBotRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    EditConnectedStarRefBotRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of EditConnectedStarRefBotRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EditConnectedStarRefBotRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
