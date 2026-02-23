# CheckHistoryImportRequest

Represents a request to check history import. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `CheckHistoryImportRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`CheckHistoryImportRequest$new()`](#method-CheckHistoryImportRequest-new)

- [`CheckHistoryImportRequest$toDict()`](#method-CheckHistoryImportRequest-toDict)

- [`CheckHistoryImportRequest$bytes()`](#method-CheckHistoryImportRequest-bytes)

- [`CheckHistoryImportRequest$clone()`](#method-CheckHistoryImportRequest-clone)

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

Initialize the CheckHistoryImportRequest object.

#### Usage

    CheckHistoryImportRequest$new(importHead)

#### Arguments

- `importHead`:

  The import head string.

------------------------------------------------------------------------

### Method `toDict()`

Convert the object to a dictionary.

#### Usage

    CheckHistoryImportRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    CheckHistoryImportRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CheckHistoryImportRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
