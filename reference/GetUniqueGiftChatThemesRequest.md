# GetUniqueGiftChatThemesRequest

R6 class representing a GetUniqueGiftChatThemesRequest.

## Details

This class handles requesting unique gift chat themes with offset,
limit, and hash.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetUniqueGiftChatThemesRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`GetUniqueGiftChatThemesRequest$new()`](#method-GetUniqueGiftChatThemesRequest-new)

- [`GetUniqueGiftChatThemesRequest$toDict()`](#method-GetUniqueGiftChatThemesRequest-toDict)

- [`GetUniqueGiftChatThemesRequest$bytes()`](#method-GetUniqueGiftChatThemesRequest-bytes)

- [`GetUniqueGiftChatThemesRequest$fromReader()`](#method-GetUniqueGiftChatThemesRequest-fromReader)

- [`GetUniqueGiftChatThemesRequest$clone()`](#method-GetUniqueGiftChatThemesRequest-clone)

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

Initialize the GetUniqueGiftChatThemesRequest.

#### Usage

    GetUniqueGiftChatThemesRequest$new(offset, limit, hash)

#### Arguments

- `offset`:

  The offset for pagination.

- `limit`:

  The limit for the number of themes.

- `hash`:

  The hash for caching.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    GetUniqueGiftChatThemesRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    GetUniqueGiftChatThemesRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    GetUniqueGiftChatThemesRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetUniqueGiftChatThemesRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetUniqueGiftChatThemesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
