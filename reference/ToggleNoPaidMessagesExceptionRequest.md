# ToggleNoPaidMessagesExceptionRequest

R6 class representing a ToggleNoPaidMessagesExceptionRequest.

## Details

This class handles toggling the no paid messages exception for a user.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ToggleNoPaidMessagesExceptionRequest`

## Methods

### Public methods

- [`ToggleNoPaidMessagesExceptionRequest$new()`](#method-ToggleNoPaidMessagesExceptionRequest-new)

- [`ToggleNoPaidMessagesExceptionRequest$resolve()`](#method-ToggleNoPaidMessagesExceptionRequest-resolve)

- [`ToggleNoPaidMessagesExceptionRequest$toDict()`](#method-ToggleNoPaidMessagesExceptionRequest-toDict)

- [`ToggleNoPaidMessagesExceptionRequest$bytes()`](#method-ToggleNoPaidMessagesExceptionRequest-bytes)

- [`ToggleNoPaidMessagesExceptionRequest$fromReader()`](#method-ToggleNoPaidMessagesExceptionRequest-fromReader)

- [`ToggleNoPaidMessagesExceptionRequest$clone()`](#method-ToggleNoPaidMessagesExceptionRequest-clone)

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

Initialize the ToggleNoPaidMessagesExceptionRequest.

#### Usage

    ToggleNoPaidMessagesExceptionRequest$new(
      userId,
      refundCharged = NULL,
      requirePayment = NULL,
      parentPeer = NULL
    )

#### Arguments

- `userId`:

  The input user ID.

- `refundCharged`:

  Optional boolean for refund charged.

- `requirePayment`:

  Optional boolean for require payment.

- `parentPeer`:

  Optional input parent peer.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the user ID and parent peer using client and utils.

#### Usage

    ToggleNoPaidMessagesExceptionRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    ToggleNoPaidMessagesExceptionRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    ToggleNoPaidMessagesExceptionRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    ToggleNoPaidMessagesExceptionRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of ToggleNoPaidMessagesExceptionRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleNoPaidMessagesExceptionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
