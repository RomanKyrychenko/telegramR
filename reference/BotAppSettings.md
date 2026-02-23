# BotAppSettings

Telegram API type BotAppSettings

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotAppSettings`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `placeholder_path`:

  Field.

- `background_color`:

  Field.

- `background_dark_color`:

  Field.

- `header_color`:

  Field.

- `header_dark_color`:

  Field.

## Methods

### Public methods

- [`BotAppSettings$new()`](#method-BotAppSettings-new)

- [`BotAppSettings$to_dict()`](#method-BotAppSettings-to_dict)

- [`BotAppSettings$bytes()`](#method-BotAppSettings-bytes)

- [`BotAppSettings$clone()`](#method-BotAppSettings-clone)

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

Initializes the BotAppSettings with the given parameters.

#### Usage

    BotAppSettings$new(
      placeholder_path = NULL,
      background_color = NULL,
      background_dark_color = NULL,
      header_color = NULL,
      header_dark_color = NULL
    )

#### Arguments

- `placeholder_path`:

  A raw vector representing placeholder path bytes. Optional.

- `background_color`:

  An integer representing the background color. Optional.

- `background_dark_color`:

  An integer representing the dark background color. Optional.

- `header_color`:

  An integer representing the header color. Optional.

- `header_dark_color`:

  An integer representing the dark header color. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotAppSettings object to a list (dictionary).

#### Usage

    BotAppSettings$to_dict()

#### Returns

A list representation of the BotAppSettings object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotAppSettings object to bytes.

#### Usage

    BotAppSettings$bytes()

#### Returns

A raw vector representing the serialized bytes of the BotAppSettings
object. Reads a BotAppSettings object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotAppSettings$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
