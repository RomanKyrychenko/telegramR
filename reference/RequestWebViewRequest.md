# RequestWebViewRequest

Represents a request to request a web view. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `RequestWebViewRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`RequestWebViewRequest$new()`](#method-RequestWebViewRequest-new)

- [`RequestWebViewRequest$resolve()`](#method-RequestWebViewRequest-resolve)

- [`RequestWebViewRequest$to_dict()`](#method-RequestWebViewRequest-to_dict)

- [`RequestWebViewRequest$bytes()`](#method-RequestWebViewRequest-bytes)

- [`RequestWebViewRequest$clone()`](#method-RequestWebViewRequest-clone)

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

Initialize the RequestWebViewRequest object.

#### Usage

    RequestWebViewRequest$new(
      peer,
      bot,
      platform,
      from_bot_menu = NULL,
      silent = NULL,
      compact = NULL,
      fullscreen = NULL,
      url = NULL,
      start_param = NULL,
      theme_params = NULL,
      reply_to = NULL,
      send_as = NULL
    )

#### Arguments

- `peer`:

  The input peer.

- `bot`:

  The input user (bot).

- `platform`:

  The platform string.

- `from_bot_menu`:

  Optional from bot menu flag.

- `silent`:

  Optional silent flag.

- `compact`:

  Optional compact flag.

- `fullscreen`:

  Optional fullscreen flag.

- `url`:

  Optional URL.

- `start_param`:

  Optional start parameter.

- `theme_params`:

  Optional theme parameters.

- `reply_to`:

  Optional input reply to.

- `send_as`:

  Optional input peer to send as.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    RequestWebViewRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    RequestWebViewRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    RequestWebViewRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RequestWebViewRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
