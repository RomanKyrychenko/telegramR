# RegisterDeviceRequest

R6 class representing a RegisterDeviceRequest.

## Details

This class handles registering a device with token details, app sandbox
status, secret, and other user IDs.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `RegisterDeviceRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`RegisterDeviceRequest$new()`](#method-RegisterDeviceRequest-new)

- [`RegisterDeviceRequest$toDict()`](#method-RegisterDeviceRequest-toDict)

- [`RegisterDeviceRequest$bytes()`](#method-RegisterDeviceRequest-bytes)

- [`RegisterDeviceRequest$fromReader()`](#method-RegisterDeviceRequest-fromReader)

- [`RegisterDeviceRequest$clone()`](#method-RegisterDeviceRequest-clone)

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
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize the RegisterDeviceRequest.

#### Usage

    RegisterDeviceRequest$new(
      tokenType,
      token,
      appSandbox,
      secret,
      otherUids,
      noMuted = NULL
    )

#### Arguments

- `tokenType`:

  The token type integer.

- `token`:

  The token string.

- `appSandbox`:

  Boolean indicating if the app is in sandbox mode.

- `secret`:

  The secret bytes.

- `otherUids`:

  List of other user IDs.

- `noMuted`:

  Optional boolean indicating if muted notifications are disabled.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    RegisterDeviceRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    RegisterDeviceRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    RegisterDeviceRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of RegisterDeviceRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RegisterDeviceRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
