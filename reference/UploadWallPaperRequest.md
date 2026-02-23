# UploadWallPaperRequest

R6 class representing an UploadWallPaperRequest.

## Details

This class handles uploading a wallpaper with specified settings.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UploadWallPaperRequest`

## Methods

### Public methods

- [`UploadWallPaperRequest$new()`](#method-UploadWallPaperRequest-new)

- [`UploadWallPaperRequest$toDict()`](#method-UploadWallPaperRequest-toDict)

- [`UploadWallPaperRequest$bytes()`](#method-UploadWallPaperRequest-bytes)

- [`UploadWallPaperRequest$clone()`](#method-UploadWallPaperRequest-clone)

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

Initialize the UploadWallPaperRequest.

#### Usage

    UploadWallPaperRequest$new(file, mimeType, settings, forChat = NULL)

#### Arguments

- `file`:

  The input file.

- `mimeType`:

  The MIME type of the file.

- `settings`:

  The wallpaper settings.

- `forChat`:

  Optional boolean indicating if for chat.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    UploadWallPaperRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    UploadWallPaperRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UploadWallPaperRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
