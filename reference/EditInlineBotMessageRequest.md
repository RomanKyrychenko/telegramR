# EditInlineBotMessageRequest

Represents a request to edit an inline bot message. This class inherits
from TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `EditInlineBotMessageRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`EditInlineBotMessageRequest$new()`](#method-EditInlineBotMessageRequest-new)

- [`EditInlineBotMessageRequest$resolve()`](#method-EditInlineBotMessageRequest-resolve)

- [`EditInlineBotMessageRequest$toDict()`](#method-EditInlineBotMessageRequest-toDict)

- [`EditInlineBotMessageRequest$bytes()`](#method-EditInlineBotMessageRequest-bytes)

- [`EditInlineBotMessageRequest$clone()`](#method-EditInlineBotMessageRequest-clone)

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

Initialize the EditInlineBotMessageRequest object.

#### Usage

    EditInlineBotMessageRequest$new(
      id,
      noWebpage = NULL,
      invertMedia = NULL,
      message = NULL,
      media = NULL,
      replyMarkup = NULL,
      entities = NULL
    )

#### Arguments

- `id`:

  The input bot inline message ID.

- `noWebpage`:

  Whether to disable webpage preview (optional).

- `invertMedia`:

  Whether to invert media (optional).

- `message`:

  The message text (optional).

- `media`:

  The input media (optional).

- `replyMarkup`:

  The reply markup (optional).

- `entities`:

  The message entities (optional).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    EditInlineBotMessageRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert the object to a dictionary.

#### Usage

    EditInlineBotMessageRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    EditInlineBotMessageRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EditInlineBotMessageRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
