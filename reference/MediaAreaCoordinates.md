# MediaAreaCoordinates

Telegram API type MediaAreaCoordinates

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MediaAreaCoordinates`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `x`:

  Field.

- `y`:

  Field.

- `w`:

  Field.

- `h`:

  Field.

- `rotation`:

  Field.

- `radius`:

  Field.

## Methods

### Public methods

- [`MediaAreaCoordinates$new()`](#method-MediaAreaCoordinates-new)

- [`MediaAreaCoordinates$to_dict()`](#method-MediaAreaCoordinates-to_dict)

- [`MediaAreaCoordinates$bytes()`](#method-MediaAreaCoordinates-bytes)

- [`MediaAreaCoordinates$clone()`](#method-MediaAreaCoordinates-clone)

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

    MediaAreaCoordinates$new(x, y, w, h, rotation, radius = NULL)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MediaAreaCoordinates$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MediaAreaCoordinates$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MediaAreaCoordinates$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
