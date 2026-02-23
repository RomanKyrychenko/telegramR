# UploadRingtoneRequest

R6 class representing an UploadRingtoneRequest.

## Details

This class handles uploading a ringtone.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UploadRingtoneRequest`

## Methods

### Public methods

- [`UploadRingtoneRequest$new()`](#method-UploadRingtoneRequest-new)

- [`UploadRingtoneRequest$toDict()`](#method-UploadRingtoneRequest-toDict)

- [`UploadRingtoneRequest$bytes()`](#method-UploadRingtoneRequest-bytes)

- [`UploadRingtoneRequest$fromReader()`](#method-UploadRingtoneRequest-fromReader)

- [`UploadRingtoneRequest$clone()`](#method-UploadRingtoneRequest-clone)

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

Initialize the UploadRingtoneRequest.

#### Usage

    UploadRingtoneRequest$new(file, fileName, mimeType)

#### Arguments

- `file`:

  The input file.

- `fileName`:

  The file name.

- `mimeType`:

  The MIME type.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    UploadRingtoneRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    UploadRingtoneRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    UploadRingtoneRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of UploadRingtoneRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UploadRingtoneRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
