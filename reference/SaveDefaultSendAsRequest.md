# SaveDefaultSendAsRequest

Represents a request to save the default send-as peer for a chat. This
class inherits from TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SaveDefaultSendAsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`SaveDefaultSendAsRequest$new()`](#method-SaveDefaultSendAsRequest-new)

- [`SaveDefaultSendAsRequest$resolve()`](#method-SaveDefaultSendAsRequest-resolve)

- [`SaveDefaultSendAsRequest$to_dict()`](#method-SaveDefaultSendAsRequest-to_dict)

- [`SaveDefaultSendAsRequest$bytes()`](#method-SaveDefaultSendAsRequest-bytes)

- [`SaveDefaultSendAsRequest$clone()`](#method-SaveDefaultSendAsRequest-clone)

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
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize the SaveDefaultSendAsRequest object.

#### Usage

    SaveDefaultSendAsRequest$new(peer, send_as)

#### Arguments

- `peer`:

  The input peer.

- `send_as`:

  The send-as input peer.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    SaveDefaultSendAsRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    SaveDefaultSendAsRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    SaveDefaultSendAsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SaveDefaultSendAsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
