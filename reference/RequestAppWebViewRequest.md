# RequestAppWebViewRequest

Represents a request to request an app web view. This class inherits
from TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `RequestAppWebViewRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`RequestAppWebViewRequest$new()`](#method-RequestAppWebViewRequest-new)

- [`RequestAppWebViewRequest$resolve()`](#method-RequestAppWebViewRequest-resolve)

- [`RequestAppWebViewRequest$to_dict()`](#method-RequestAppWebViewRequest-to_dict)

- [`RequestAppWebViewRequest$bytes()`](#method-RequestAppWebViewRequest-bytes)

- [`RequestAppWebViewRequest$clone()`](#method-RequestAppWebViewRequest-clone)

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

Initialize the RequestAppWebViewRequest object.

#### Usage

    RequestAppWebViewRequest$new(
      peer,
      app,
      platform,
      writeAllowed = NULL,
      compact = NULL,
      fullscreen = NULL,
      startParam = NULL,
      themeParams = NULL
    )

#### Arguments

- `peer`:

  The input peer.

- `app`:

  The input bot app.

- `platform`:

  The platform string.

- `writeAllowed`:

  Optional write allowed flag.

- `compact`:

  Optional compact flag.

- `fullscreen`:

  Optional fullscreen flag.

- `startParam`:

  Optional start parameter.

- `themeParams`:

  Optional theme parameters.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    RequestAppWebViewRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    RequestAppWebViewRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    RequestAppWebViewRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RequestAppWebViewRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
