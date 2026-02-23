# UnregisterDeviceRequest

R6 class representing an UnregisterDeviceRequest.

## Details

This class handles unregistering a device with token details and other
UIDs.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UnregisterDeviceRequest`

## Methods

### Public methods

- [`UnregisterDeviceRequest$new()`](#method-UnregisterDeviceRequest-new)

- [`UnregisterDeviceRequest$toDict()`](#method-UnregisterDeviceRequest-toDict)

- [`UnregisterDeviceRequest$bytes()`](#method-UnregisterDeviceRequest-bytes)

- [`UnregisterDeviceRequest$fromReader()`](#method-UnregisterDeviceRequest-fromReader)

- [`UnregisterDeviceRequest$clone()`](#method-UnregisterDeviceRequest-clone)

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

Initialize the UnregisterDeviceRequest.

#### Usage

    UnregisterDeviceRequest$new(tokenType, token, otherUids)

#### Arguments

- `tokenType`:

  The token type integer.

- `token`:

  The token string.

- `otherUids`:

  List of other user IDs.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    UnregisterDeviceRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    UnregisterDeviceRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    UnregisterDeviceRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of UnregisterDeviceRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UnregisterDeviceRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
