# GetAllSecureValuesRequest

R6 class representing a GetAllSecureValuesRequest.

## Details

This class handles requesting all secure values.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetAllSecureValuesRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`GetAllSecureValuesRequest$new()`](#method-GetAllSecureValuesRequest-new)

- [`GetAllSecureValuesRequest$toDict()`](#method-GetAllSecureValuesRequest-toDict)

- [`GetAllSecureValuesRequest$bytes()`](#method-GetAllSecureValuesRequest-bytes)

- [`GetAllSecureValuesRequest$fromReader()`](#method-GetAllSecureValuesRequest-fromReader)

- [`GetAllSecureValuesRequest$clone()`](#method-GetAllSecureValuesRequest-clone)

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

Initialize the GetAllSecureValuesRequest.

#### Usage

    GetAllSecureValuesRequest$new()

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    GetAllSecureValuesRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    GetAllSecureValuesRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    GetAllSecureValuesRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetAllSecureValuesRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetAllSecureValuesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
