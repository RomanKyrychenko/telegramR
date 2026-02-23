# UpdateConnectedBotRequest

R6 class representing an UpdateConnectedBotRequest.

## Details

This class handles updating a connected bot with recipients, deletion
status, and rights.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdateConnectedBotRequest`

## Methods

### Public methods

- [`UpdateConnectedBotRequest$new()`](#method-UpdateConnectedBotRequest-new)

- [`UpdateConnectedBotRequest$resolve()`](#method-UpdateConnectedBotRequest-resolve)

- [`UpdateConnectedBotRequest$toDict()`](#method-UpdateConnectedBotRequest-toDict)

- [`UpdateConnectedBotRequest$bytes()`](#method-UpdateConnectedBotRequest-bytes)

- [`UpdateConnectedBotRequest$fromReader()`](#method-UpdateConnectedBotRequest-fromReader)

- [`UpdateConnectedBotRequest$clone()`](#method-UpdateConnectedBotRequest-clone)

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

Initialize the UpdateConnectedBotRequest.

#### Usage

    UpdateConnectedBotRequest$new(bot, recipients, deleted = NULL, rights = NULL)

#### Arguments

- `bot`:

  The input user for the bot.

- `recipients`:

  The input business bot recipients.

- `deleted`:

  Optional boolean indicating if deleted.

- `rights`:

  Optional business bot rights.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the bot using client and utils.

#### Usage

    UpdateConnectedBotRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    UpdateConnectedBotRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    UpdateConnectedBotRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    UpdateConnectedBotRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of UpdateConnectedBotRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateConnectedBotRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
