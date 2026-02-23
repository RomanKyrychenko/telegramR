# UpdateBusinessAwayMessageRequest

R6 class representing an UpdateBusinessAwayMessageRequest.

## Details

This class handles updating the business away message with an optional
input business away message.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdateBusinessAwayMessageRequest`

## Methods

### Public methods

- [`UpdateBusinessAwayMessageRequest$new()`](#method-UpdateBusinessAwayMessageRequest-new)

- [`UpdateBusinessAwayMessageRequest$toDict()`](#method-UpdateBusinessAwayMessageRequest-toDict)

- [`UpdateBusinessAwayMessageRequest$bytes()`](#method-UpdateBusinessAwayMessageRequest-bytes)

- [`UpdateBusinessAwayMessageRequest$fromReader()`](#method-UpdateBusinessAwayMessageRequest-fromReader)

- [`UpdateBusinessAwayMessageRequest$clone()`](#method-UpdateBusinessAwayMessageRequest-clone)

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
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize the UpdateBusinessAwayMessageRequest.

#### Usage

    UpdateBusinessAwayMessageRequest$new(message = NULL)

#### Arguments

- `message`:

  Optional input business away message.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    UpdateBusinessAwayMessageRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    UpdateBusinessAwayMessageRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    UpdateBusinessAwayMessageRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of UpdateBusinessAwayMessageRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateBusinessAwayMessageRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
