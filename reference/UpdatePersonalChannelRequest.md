# UpdatePersonalChannelRequest

R6 class representing an UpdatePersonalChannelRequest.

## Details

This class handles updating the personal channel.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdatePersonalChannelRequest`

## Methods

### Public methods

- [`UpdatePersonalChannelRequest$new()`](#method-UpdatePersonalChannelRequest-new)

- [`UpdatePersonalChannelRequest$resolve()`](#method-UpdatePersonalChannelRequest-resolve)

- [`UpdatePersonalChannelRequest$toDict()`](#method-UpdatePersonalChannelRequest-toDict)

- [`UpdatePersonalChannelRequest$bytes()`](#method-UpdatePersonalChannelRequest-bytes)

- [`UpdatePersonalChannelRequest$fromReader()`](#method-UpdatePersonalChannelRequest-fromReader)

- [`UpdatePersonalChannelRequest$clone()`](#method-UpdatePersonalChannelRequest-clone)

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

Initialize the UpdatePersonalChannelRequest.

#### Usage

    UpdatePersonalChannelRequest$new(channel)

#### Arguments

- `channel`:

  The input channel.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the channel using client and utils.

#### Usage

    UpdatePersonalChannelRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    UpdatePersonalChannelRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    UpdatePersonalChannelRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    UpdatePersonalChannelRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of UpdatePersonalChannelRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdatePersonalChannelRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
