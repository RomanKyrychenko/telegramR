# MessageMediaGeoLive

Telegram API type MessageMediaGeoLive

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageMediaGeoLive`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `geo`:

  Field.

- `period`:

  Field.

- `heading`:

  Field.

- `proximity_notification_radius`:

  Field.

## Methods

### Public methods

- [`MessageMediaGeoLive$new()`](#method-MessageMediaGeoLive-new)

- [`MessageMediaGeoLive$to_dict()`](#method-MessageMediaGeoLive-to_dict)

- [`MessageMediaGeoLive$bytes()`](#method-MessageMediaGeoLive-bytes)

- [`MessageMediaGeoLive$clone()`](#method-MessageMediaGeoLive-clone)

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

    MessageMediaGeoLive$new(
      geo,
      period,
      heading = NULL,
      proximity_notification_radius = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageMediaGeoLive$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageMediaGeoLive$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageMediaGeoLive$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
