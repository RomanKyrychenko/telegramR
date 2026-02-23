# RequestSimpleWebViewRequest

Represents a request to request a simple web view for a bot. This class
inherits from TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `RequestSimpleWebViewRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`RequestSimpleWebViewRequest$new()`](#method-RequestSimpleWebViewRequest-new)

- [`RequestSimpleWebViewRequest$resolve()`](#method-RequestSimpleWebViewRequest-resolve)

- [`RequestSimpleWebViewRequest$to_dict()`](#method-RequestSimpleWebViewRequest-to_dict)

- [`RequestSimpleWebViewRequest$bytes()`](#method-RequestSimpleWebViewRequest-bytes)

- [`RequestSimpleWebViewRequest$clone()`](#method-RequestSimpleWebViewRequest-clone)

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

Initialize the RequestSimpleWebViewRequest object.

#### Usage

    RequestSimpleWebViewRequest$new(
      bot,
      platform,
      from_switch_webview = NULL,
      from_side_menu = NULL,
      compact = NULL,
      fullscreen = NULL,
      url = NULL,
      start_param = NULL,
      theme_params = NULL
    )

#### Arguments

- `bot`:

  The input user (bot).

- `platform`:

  The platform string.

- `from_switch_webview`:

  Optional from switch webview flag.

- `from_side_menu`:

  Optional from side menu flag.

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

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    RequestSimpleWebViewRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    RequestSimpleWebViewRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    RequestSimpleWebViewRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RequestSimpleWebViewRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
