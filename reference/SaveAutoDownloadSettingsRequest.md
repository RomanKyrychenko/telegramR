# SaveAutoDownloadSettingsRequest

R6 class representing a SaveAutoDownloadSettingsRequest.

## Details

This class handles saving auto-download settings with optional low and
high flags.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SaveAutoDownloadSettingsRequest`

## Methods

### Public methods

- [`SaveAutoDownloadSettingsRequest$new()`](#method-SaveAutoDownloadSettingsRequest-new)

- [`SaveAutoDownloadSettingsRequest$toDict()`](#method-SaveAutoDownloadSettingsRequest-toDict)

- [`SaveAutoDownloadSettingsRequest$bytes()`](#method-SaveAutoDownloadSettingsRequest-bytes)

- [`SaveAutoDownloadSettingsRequest$fromReader()`](#method-SaveAutoDownloadSettingsRequest-fromReader)

- [`SaveAutoDownloadSettingsRequest$clone()`](#method-SaveAutoDownloadSettingsRequest-clone)

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

Initialize the SaveAutoDownloadSettingsRequest.

#### Usage

    SaveAutoDownloadSettingsRequest$new(settings, low = NULL, high = NULL)

#### Arguments

- `settings`:

  The auto-download settings.

- `low`:

  Optional boolean indicating low quality.

- `high`:

  Optional boolean indicating high quality.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    SaveAutoDownloadSettingsRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    SaveAutoDownloadSettingsRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    SaveAutoDownloadSettingsRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of SaveAutoDownloadSettingsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SaveAutoDownloadSettingsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
