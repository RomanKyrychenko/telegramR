# SetTypingRequest

Represents a request to set typing. This class inherits from TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SetTypingRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`SetTypingRequest$new()`](#method-SetTypingRequest-new)

- [`SetTypingRequest$resolve()`](#method-SetTypingRequest-resolve)

- [`SetTypingRequest$to_dict()`](#method-SetTypingRequest-to_dict)

- [`SetTypingRequest$bytes()`](#method-SetTypingRequest-bytes)

- [`SetTypingRequest$clone()`](#method-SetTypingRequest-clone)

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

Initialize the SetTypingRequest object.

#### Usage

    SetTypingRequest$new(peer, action, top_msg_id = NULL)

#### Arguments

- `peer`:

  The input peer.

- `action`:

  The send message action.

- `top_msg_id`:

  Optional top message ID.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    SetTypingRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    SetTypingRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    SetTypingRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetTypingRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
