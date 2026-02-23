# MessageExtendedMediaPreview

Telegram API type MessageExtendedMediaPreview

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageExtendedMediaPreview`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `w`:

  Field.

- `h`:

  Field.

- `thumb`:

  Field.

- `video_duration`:

  Field.

## Methods

### Public methods

- [`MessageExtendedMediaPreview$new()`](#method-MessageExtendedMediaPreview-new)

- [`MessageExtendedMediaPreview$to_dict()`](#method-MessageExtendedMediaPreview-to_dict)

- [`MessageExtendedMediaPreview$bytes()`](#method-MessageExtendedMediaPreview-bytes)

- [`MessageExtendedMediaPreview$clone()`](#method-MessageExtendedMediaPreview-clone)

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

#### Usage

    MessageExtendedMediaPreview$new(
      w = NULL,
      h = NULL,
      thumb = NULL,
      video_duration = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageExtendedMediaPreview$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageExtendedMediaPreview$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageExtendedMediaPreview$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
