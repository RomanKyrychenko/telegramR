# GetReactionsNotifySettingsRequest

R6 class representing a GetReactionsNotifySettingsRequest.

## Details

This class handles requesting reactions notify settings.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetReactionsNotifySettingsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`GetReactionsNotifySettingsRequest$toDict()`](#method-GetReactionsNotifySettingsRequest-toDict)

- [`GetReactionsNotifySettingsRequest$bytes()`](#method-GetReactionsNotifySettingsRequest-bytes)

- [`GetReactionsNotifySettingsRequest$fromReader()`](#method-GetReactionsNotifySettingsRequest-fromReader)

- [`GetReactionsNotifySettingsRequest$clone()`](#method-GetReactionsNotifySettingsRequest-clone)

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

### Method `toDict()`

Convert to dictionary.

#### Usage

    GetReactionsNotifySettingsRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    GetReactionsNotifySettingsRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    GetReactionsNotifySettingsRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetReactionsNotifySettingsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetReactionsNotifySettingsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
