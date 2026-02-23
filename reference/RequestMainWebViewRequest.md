# RequestMainWebViewRequest

Represents a request to request the main web view for a bot. This class
inherits from TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `RequestMainWebViewRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`RequestMainWebViewRequest$new()`](#method-RequestMainWebViewRequest-new)

- [`RequestMainWebViewRequest$resolve()`](#method-RequestMainWebViewRequest-resolve)

- [`RequestMainWebViewRequest$to_dict()`](#method-RequestMainWebViewRequest-to_dict)

- [`RequestMainWebViewRequest$bytes()`](#method-RequestMainWebViewRequest-bytes)

- [`RequestMainWebViewRequest$clone()`](#method-RequestMainWebViewRequest-clone)

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

Initialize the RequestMainWebViewRequest object.

#### Usage

    RequestMainWebViewRequest$new(
      peer,
      bot,
      platform,
      compact = NULL,
      fullscreen = NULL,
      start_param = NULL,
      theme_params = NULL
    )

#### Arguments

- `peer`:

  The input peer.

- `bot`:

  The input user (bot).

- `platform`:

  The platform string.

- `compact`:

  Optional compact flag.

- `fullscreen`:

  Optional fullscreen flag.

- `start_param`:

  Optional start parameter.

- `theme_params`:

  Optional theme parameters.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    RequestMainWebViewRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    RequestMainWebViewRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    RequestMainWebViewRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RequestMainWebViewRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
