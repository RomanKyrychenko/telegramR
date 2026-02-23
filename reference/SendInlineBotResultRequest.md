# SendInlineBotResultRequest

Represents a request to send an inline bot result. This class inherits
from TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SendInlineBotResultRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`SendInlineBotResultRequest$new()`](#method-SendInlineBotResultRequest-new)

- [`SendInlineBotResultRequest$resolve()`](#method-SendInlineBotResultRequest-resolve)

- [`SendInlineBotResultRequest$to_dict()`](#method-SendInlineBotResultRequest-to_dict)

- [`SendInlineBotResultRequest$bytes()`](#method-SendInlineBotResultRequest-bytes)

- [`SendInlineBotResultRequest$clone()`](#method-SendInlineBotResultRequest-clone)

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

Initialize the SendInlineBotResultRequest object.

#### Usage

    SendInlineBotResultRequest$new(
      peer,
      query_id,
      id,
      silent = NULL,
      background = NULL,
      clear_draft = NULL,
      hide_via = NULL,
      reply_to = NULL,
      random_id = NULL,
      schedule_date = NULL,
      send_as = NULL,
      quick_reply_shortcut = NULL,
      allow_paid_stars = NULL
    )

#### Arguments

- `peer`:

  The input peer.

- `query_id`:

  The query ID.

- `id`:

  The result ID string.

- `silent`:

  Optional silent flag.

- `background`:

  Optional background flag.

- `clear_draft`:

  Optional clear draft flag.

- `hide_via`:

  Optional hide via flag.

- `reply_to`:

  Optional input reply to.

- `random_id`:

  Optional random ID, defaults to a generated 64-bit integer.

- `schedule_date`:

  Optional schedule date.

- `send_as`:

  Optional input peer to send as.

- `quick_reply_shortcut`:

  Optional input quick reply shortcut.

- `allow_paid_stars`:

  Optional allow paid stars count.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    SendInlineBotResultRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    SendInlineBotResultRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    SendInlineBotResultRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SendInlineBotResultRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
