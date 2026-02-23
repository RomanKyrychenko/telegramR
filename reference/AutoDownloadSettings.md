# AutoDownloadSettings

Telegram API type AutoDownloadSettings

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `AutoDownloadSettings`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `photo_size_max`:

  Field.

- `video_size_max`:

  Field.

- `file_size_max`:

  Field.

- `video_upload_maxbitrate`:

  Field.

- `small_queue_active_operations_max`:

  Field.

- `large_queue_active_operations_max`:

  Field.

- `disabled`:

  Field.

- `video_preload_large`:

  Field.

- `audio_preload_next`:

  Field.

- `phonecalls_lessdata`:

  Field.

- `stories_preload`:

  Field.

## Methods

### Public methods

- [`AutoDownloadSettings$new()`](#method-AutoDownloadSettings-new)

- [`AutoDownloadSettings$to_dict()`](#method-AutoDownloadSettings-to_dict)

- [`AutoDownloadSettings$bytes()`](#method-AutoDownloadSettings-bytes)

- [`AutoDownloadSettings$clone()`](#method-AutoDownloadSettings-clone)

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
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

Initializes the AutoDownloadSettings with the given parameters.

#### Usage

    AutoDownloadSettings$new(
      photo_size_max,
      video_size_max,
      file_size_max,
      video_upload_maxbitrate,
      small_queue_active_operations_max,
      large_queue_active_operations_max,
      disabled = NULL,
      video_preload_large = NULL,
      audio_preload_next = NULL,
      phonecalls_lessdata = NULL,
      stories_preload = NULL
    )

#### Arguments

- `photo_size_max`:

  An integer representing the maximum photo size.

- `video_size_max`:

  An integer representing the maximum video size.

- `file_size_max`:

  An integer representing the maximum file size.

- `video_upload_maxbitrate`:

  An integer representing the maximum video upload bitrate.

- `small_queue_active_operations_max`:

  An integer representing the maximum small queue active operations.

- `large_queue_active_operations_max`:

  An integer representing the maximum large queue active operations.

- `disabled`:

  Optional boolean indicating if disabled.

- `video_preload_large`:

  Optional boolean indicating if video preload large.

- `audio_preload_next`:

  Optional boolean indicating if audio preload next.

- `phonecalls_lessdata`:

  Optional boolean indicating if phonecalls use less data.

- `stories_preload`:

  Optional boolean indicating if stories preload.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the AutoDownloadSettings object to a list (dictionary).

#### Usage

    AutoDownloadSettings$to_dict()

#### Returns

A list representation of the AutoDownloadSettings object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the AutoDownloadSettings object to bytes.

#### Usage

    AutoDownloadSettings$bytes()

#### Returns

A raw vector representing the serialized bytes of the
AutoDownloadSettings object. Reads an AutoDownloadSettings object from a
BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AutoDownloadSettings$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
