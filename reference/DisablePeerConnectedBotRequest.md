# DisablePeerConnectedBotRequest

R6 class representing a DisablePeerConnectedBotRequest.

## Details

This class handles disabling a connected bot for a peer.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `DisablePeerConnectedBotRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`DisablePeerConnectedBotRequest$new()`](#method-DisablePeerConnectedBotRequest-new)

- [`DisablePeerConnectedBotRequest$resolve()`](#method-DisablePeerConnectedBotRequest-resolve)

- [`DisablePeerConnectedBotRequest$toDict()`](#method-DisablePeerConnectedBotRequest-toDict)

- [`DisablePeerConnectedBotRequest$bytes()`](#method-DisablePeerConnectedBotRequest-bytes)

- [`DisablePeerConnectedBotRequest$fromReader()`](#method-DisablePeerConnectedBotRequest-fromReader)

- [`DisablePeerConnectedBotRequest$clone()`](#method-DisablePeerConnectedBotRequest-clone)

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

Initialize the DisablePeerConnectedBotRequest.

#### Usage

    DisablePeerConnectedBotRequest$new(peer)

#### Arguments

- `peer`:

  The input peer.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    DisablePeerConnectedBotRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    DisablePeerConnectedBotRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    DisablePeerConnectedBotRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    DisablePeerConnectedBotRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of DisablePeerConnectedBotRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DisablePeerConnectedBotRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
