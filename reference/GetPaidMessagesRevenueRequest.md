# GetPaidMessagesRevenueRequest

R6 class representing a GetPaidMessagesRevenueRequest.

## Details

This class handles requesting paid messages revenue for a user with
optional parent peer.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetPaidMessagesRevenueRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`GetPaidMessagesRevenueRequest$new()`](#method-GetPaidMessagesRevenueRequest-new)

- [`GetPaidMessagesRevenueRequest$resolve()`](#method-GetPaidMessagesRevenueRequest-resolve)

- [`GetPaidMessagesRevenueRequest$toDict()`](#method-GetPaidMessagesRevenueRequest-toDict)

- [`GetPaidMessagesRevenueRequest$bytes()`](#method-GetPaidMessagesRevenueRequest-bytes)

- [`GetPaidMessagesRevenueRequest$fromReader()`](#method-GetPaidMessagesRevenueRequest-fromReader)

- [`GetPaidMessagesRevenueRequest$clone()`](#method-GetPaidMessagesRevenueRequest-clone)

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

Initialize the GetPaidMessagesRevenueRequest.

#### Usage

    GetPaidMessagesRevenueRequest$new(userId, parentPeer = NULL)

#### Arguments

- `userId`:

  The input user ID.

- `parentPeer`:

  Optional input parent peer.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the user ID and parent peer using client and utils.

#### Usage

    GetPaidMessagesRevenueRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    GetPaidMessagesRevenueRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    GetPaidMessagesRevenueRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    GetPaidMessagesRevenueRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetPaidMessagesRevenueRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetPaidMessagesRevenueRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
