# ToggleConnectedBotPausedRequest

R6 class representing a ToggleConnectedBotPausedRequest.

## Details

This class handles toggling the paused state of a connected bot for a
peer.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ToggleConnectedBotPausedRequest`

## Methods

### Public methods

- [`ToggleConnectedBotPausedRequest$new()`](#method-ToggleConnectedBotPausedRequest-new)

- [`ToggleConnectedBotPausedRequest$resolve()`](#method-ToggleConnectedBotPausedRequest-resolve)

- [`ToggleConnectedBotPausedRequest$toDict()`](#method-ToggleConnectedBotPausedRequest-toDict)

- [`ToggleConnectedBotPausedRequest$bytes()`](#method-ToggleConnectedBotPausedRequest-bytes)

- [`ToggleConnectedBotPausedRequest$fromReader()`](#method-ToggleConnectedBotPausedRequest-fromReader)

- [`ToggleConnectedBotPausedRequest$clone()`](#method-ToggleConnectedBotPausedRequest-clone)

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

Initialize the ToggleConnectedBotPausedRequest.

#### Usage

    ToggleConnectedBotPausedRequest$new(peer, paused)

#### Arguments

- `peer`:

  The input peer.

- `paused`:

  Boolean indicating if the bot is paused.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    ToggleConnectedBotPausedRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    ToggleConnectedBotPausedRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    ToggleConnectedBotPausedRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    ToggleConnectedBotPausedRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of ToggleConnectedBotPausedRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleConnectedBotPausedRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
