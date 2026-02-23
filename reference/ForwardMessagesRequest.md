# ForwardMessagesRequest

Represents a request to forward messages. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ForwardMessagesRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`ForwardMessagesRequest$new()`](#method-ForwardMessagesRequest-new)

- [`ForwardMessagesRequest$resolve()`](#method-ForwardMessagesRequest-resolve)

- [`ForwardMessagesRequest$toDict()`](#method-ForwardMessagesRequest-toDict)

- [`ForwardMessagesRequest$bytes()`](#method-ForwardMessagesRequest-bytes)

- [`ForwardMessagesRequest$clone()`](#method-ForwardMessagesRequest-clone)

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

Initialize the ForwardMessagesRequest object.

#### Usage

    ForwardMessagesRequest$new(
      fromPeer,
      id,
      toPeer,
      silent = NULL,
      background = NULL,
      withMyScore = NULL,
      dropAuthor = NULL,
      dropMediaCaptions = NULL,
      noforwards = NULL,
      allowPaidFloodskip = NULL,
      randomId = NULL,
      topMsgId = NULL,
      replyTo = NULL,
      scheduleDate = NULL,
      sendAs = NULL,
      quickReplyShortcut = NULL,
      videoTimestamp = NULL,
      allowPaidStars = NULL,
      suggestedPost = NULL
    )

#### Arguments

- `fromPeer`:

  The input peer to forward from.

- `id`:

  The list of message IDs.

- `toPeer`:

  The input peer to forward to.

- `silent`:

  Whether to send silently (optional).

- `background`:

  Whether to send in background (optional).

- `withMyScore`:

  Whether to include my score (optional).

- `dropAuthor`:

  Whether to drop author (optional).

- `dropMediaCaptions`:

  Whether to drop media captions (optional).

- `noforwards`:

  Whether to disable forwards (optional).

- `allowPaidFloodskip`:

  Whether to allow paid flood skip (optional).

- `randomId`:

  The list of random IDs (optional).

- `topMsgId`:

  The top message ID (optional).

- `replyTo`:

  The reply to (optional).

- `scheduleDate`:

  The schedule date (optional).

- `sendAs`:

  The send as peer (optional).

- `quickReplyShortcut`:

  The quick reply shortcut (optional).

- `videoTimestamp`:

  The video timestamp (optional).

- `allowPaidStars`:

  The allow paid stars (optional).

- `suggestedPost`:

  The suggested post (optional).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    ForwardMessagesRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert the object to a dictionary.

#### Usage

    ForwardMessagesRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    ForwardMessagesRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ForwardMessagesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
