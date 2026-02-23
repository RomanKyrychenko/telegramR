# InputWebFileGeoPointLocation

Telegram API type InputWebFileGeoPointLocation

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputWebFileGeoPointLocation`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `geo_point`:

  Field.

- `access_hash`:

  Field.

- `w`:

  Field.

- `h`:

  Field.

- `zoom`:

  Field.

- `scale`:

  Field.

## Methods

### Public methods

- [`InputWebFileGeoPointLocation$new()`](#method-InputWebFileGeoPointLocation-new)

- [`InputWebFileGeoPointLocation$to_dict()`](#method-InputWebFileGeoPointLocation-to_dict)

- [`InputWebFileGeoPointLocation$bytes()`](#method-InputWebFileGeoPointLocation-bytes)

- [`InputWebFileGeoPointLocation$clone()`](#method-InputWebFileGeoPointLocation-clone)

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

    InputWebFileGeoPointLocation$new(geo_point, access_hash, w, h, zoom, scale)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputWebFileGeoPointLocation$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputWebFileGeoPointLocation$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputWebFileGeoPointLocation$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
