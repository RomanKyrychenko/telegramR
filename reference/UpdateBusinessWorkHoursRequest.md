# UpdateBusinessWorkHoursRequest

R6 class representing an UpdateBusinessWorkHoursRequest.

## Details

This class handles updating the business work hours.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdateBusinessWorkHoursRequest`

## Methods

### Public methods

- [`UpdateBusinessWorkHoursRequest$new()`](#method-UpdateBusinessWorkHoursRequest-new)

- [`UpdateBusinessWorkHoursRequest$toDict()`](#method-UpdateBusinessWorkHoursRequest-toDict)

- [`UpdateBusinessWorkHoursRequest$bytes()`](#method-UpdateBusinessWorkHoursRequest-bytes)

- [`UpdateBusinessWorkHoursRequest$fromReader()`](#method-UpdateBusinessWorkHoursRequest-fromReader)

- [`UpdateBusinessWorkHoursRequest$clone()`](#method-UpdateBusinessWorkHoursRequest-clone)

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

Initialize the UpdateBusinessWorkHoursRequest.

#### Usage

    UpdateBusinessWorkHoursRequest$new(businessWorkHours = NULL)

#### Arguments

- `businessWorkHours`:

  Optional business work hours.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    UpdateBusinessWorkHoursRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    UpdateBusinessWorkHoursRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    UpdateBusinessWorkHoursRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of UpdateBusinessWorkHoursRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateBusinessWorkHoursRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
