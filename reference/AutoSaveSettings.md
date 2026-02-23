# AutoSaveSettings

Telegram API type AutoSaveSettings

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `AutoSaveSettings`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `photos`:

  Field.

- `videos`:

  Field.

- `video_max_size`:

  Field.

## Methods

### Public methods

- [`AutoSaveSettings$new()`](#method-AutoSaveSettings-new)

- [`AutoSaveSettings$to_dict()`](#method-AutoSaveSettings-to_dict)

- [`AutoSaveSettings$bytes()`](#method-AutoSaveSettings-bytes)

- [`AutoSaveSettings$clone()`](#method-AutoSaveSettings-clone)

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

Initializes the AutoSaveSettings with the given parameters.

#### Usage

    AutoSaveSettings$new(photos = NULL, videos = NULL, video_max_size = NULL)

#### Arguments

- `photos`:

  Optional boolean indicating if photos should be auto-saved.

- `videos`:

  Optional boolean indicating if videos should be auto-saved.

- `video_max_size`:

  Optional integer representing the maximum video size.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the AutoSaveSettings object to a list (dictionary).

#### Usage

    AutoSaveSettings$to_dict()

#### Returns

A list representation of the AutoSaveSettings object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the AutoSaveSettings object to bytes.

#### Usage

    AutoSaveSettings$bytes()

#### Returns

A raw vector representing the serialized bytes of the AutoSaveSettings
object. Reads an AutoSaveSettings object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AutoSaveSettings$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
