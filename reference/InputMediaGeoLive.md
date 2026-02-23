# InputMediaGeoLive

Telegram API type InputMediaGeoLive

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputMediaGeoLive`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `geo_point`:

  Field.

- `stopped`:

  Field.

- `heading`:

  Field.

- `period`:

  Field.

- `proximity_notification_radius`:

  Field.

## Methods

### Public methods

- [`InputMediaGeoLive$new()`](#method-InputMediaGeoLive-new)

- [`InputMediaGeoLive$to_dict()`](#method-InputMediaGeoLive-to_dict)

- [`InputMediaGeoLive$bytes()`](#method-InputMediaGeoLive-bytes)

- [`InputMediaGeoLive$clone()`](#method-InputMediaGeoLive-clone)

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

    InputMediaGeoLive$new(
      geo_point,
      stopped = NULL,
      heading = NULL,
      period = NULL,
      proximity_notification_radius = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputMediaGeoLive$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputMediaGeoLive$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputMediaGeoLive$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
