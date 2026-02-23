# UpdateDeviceLockedRequest

R6 class representing an UpdateDeviceLockedRequest.

## Details

This class handles updating the device locked period.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdateDeviceLockedRequest`

## Methods

### Public methods

- [`UpdateDeviceLockedRequest$new()`](#method-UpdateDeviceLockedRequest-new)

- [`UpdateDeviceLockedRequest$toDict()`](#method-UpdateDeviceLockedRequest-toDict)

- [`UpdateDeviceLockedRequest$bytes()`](#method-UpdateDeviceLockedRequest-bytes)

- [`UpdateDeviceLockedRequest$fromReader()`](#method-UpdateDeviceLockedRequest-fromReader)

- [`UpdateDeviceLockedRequest$clone()`](#method-UpdateDeviceLockedRequest-clone)

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

Initialize the UpdateDeviceLockedRequest.

#### Usage

    UpdateDeviceLockedRequest$new(period)

#### Arguments

- `period`:

  The lock period in seconds.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    UpdateDeviceLockedRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    UpdateDeviceLockedRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    UpdateDeviceLockedRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of UpdateDeviceLockedRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateDeviceLockedRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
