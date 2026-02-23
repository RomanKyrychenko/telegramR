# UpdatePinnedMessageRequest

Represents a request to update a pinned message. This class inherits
from TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdatePinnedMessageRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`UpdatePinnedMessageRequest$new()`](#method-UpdatePinnedMessageRequest-new)

- [`UpdatePinnedMessageRequest$resolve()`](#method-UpdatePinnedMessageRequest-resolve)

- [`UpdatePinnedMessageRequest$to_dict()`](#method-UpdatePinnedMessageRequest-to_dict)

- [`UpdatePinnedMessageRequest$bytes()`](#method-UpdatePinnedMessageRequest-bytes)

- [`UpdatePinnedMessageRequest$clone()`](#method-UpdatePinnedMessageRequest-clone)

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

Initialize the UpdatePinnedMessageRequest object.

#### Usage

    UpdatePinnedMessageRequest$new(
      peer,
      id,
      silent = NULL,
      unpin = NULL,
      pm_oneside = NULL
    )

#### Arguments

- `peer`:

  The input peer.

- `id`:

  The message ID.

- `silent`:

  Optional silent flag.

- `unpin`:

  Optional unpin flag.

- `pm_oneside`:

  Optional pm_oneside flag.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    UpdatePinnedMessageRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    UpdatePinnedMessageRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    UpdatePinnedMessageRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdatePinnedMessageRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
