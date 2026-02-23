# MediaAreaWeather

Telegram API type MediaAreaWeather

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MediaAreaWeather`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `coordinates`:

  Field.

- `emoji`:

  Field.

- `temperature_c`:

  Field.

- `color`:

  Field.

## Methods

### Public methods

- [`MediaAreaWeather$new()`](#method-MediaAreaWeather-new)

- [`MediaAreaWeather$to_dict()`](#method-MediaAreaWeather-to_dict)

- [`MediaAreaWeather$bytes()`](#method-MediaAreaWeather-bytes)

- [`MediaAreaWeather$clone()`](#method-MediaAreaWeather-clone)

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

    MediaAreaWeather$new(coordinates, emoji, temperature_c, color)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MediaAreaWeather$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MediaAreaWeather$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MediaAreaWeather$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
