# InstallWallPaperRequest

R6 class representing an InstallWallPaperRequest.

## Details

This class handles installing a wallpaper with settings.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `InstallWallPaperRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`InstallWallPaperRequest$new()`](#method-InstallWallPaperRequest-new)

- [`InstallWallPaperRequest$toDict()`](#method-InstallWallPaperRequest-toDict)

- [`InstallWallPaperRequest$bytes()`](#method-InstallWallPaperRequest-bytes)

- [`InstallWallPaperRequest$fromReader()`](#method-InstallWallPaperRequest-fromReader)

- [`InstallWallPaperRequest$clone()`](#method-InstallWallPaperRequest-clone)

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

Initialize the InstallWallPaperRequest.

#### Usage

    InstallWallPaperRequest$new(wallpaper, settings)

#### Arguments

- `wallpaper`:

  The input wallpaper.

- `settings`:

  The wallpaper settings.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    InstallWallPaperRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    InstallWallPaperRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    InstallWallPaperRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of InstallWallPaperRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InstallWallPaperRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
