# GetDefaultBackgroundEmojisRequest

R6 class representing a GetDefaultBackgroundEmojisRequest.

## Details

This class handles requesting default background emojis with a hash for
caching.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetDefaultBackgroundEmojisRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`GetDefaultBackgroundEmojisRequest$new()`](#method-GetDefaultBackgroundEmojisRequest-new)

- [`GetDefaultBackgroundEmojisRequest$toDict()`](#method-GetDefaultBackgroundEmojisRequest-toDict)

- [`GetDefaultBackgroundEmojisRequest$bytes()`](#method-GetDefaultBackgroundEmojisRequest-bytes)

- [`GetDefaultBackgroundEmojisRequest$fromReader()`](#method-GetDefaultBackgroundEmojisRequest-fromReader)

- [`GetDefaultBackgroundEmojisRequest$clone()`](#method-GetDefaultBackgroundEmojisRequest-clone)

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

Initialize the GetDefaultBackgroundEmojisRequest.

#### Usage

    GetDefaultBackgroundEmojisRequest$new(hash)

#### Arguments

- `hash`:

  The hash value for caching.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    GetDefaultBackgroundEmojisRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    GetDefaultBackgroundEmojisRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    GetDefaultBackgroundEmojisRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetDefaultBackgroundEmojisRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetDefaultBackgroundEmojisRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
