# Authorization

Telegram API type Authorization

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `Authorization`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `hash`:

  Field.

- `device_model`:

  Field.

- `platform`:

  Field.

- `system_version`:

  Field.

- `api_id`:

  Field.

- `app_name`:

  Field.

- `app_version`:

  Field.

- `date_created`:

  Field.

- `date_active`:

  Field.

- `ip`:

  Field.

- `country`:

  Field.

- `region`:

  Field.

- `current`:

  Field.

- `official_app`:

  Field.

- `password_pending`:

  Field.

- `encrypted_requests_disabled`:

  Field.

- `call_requests_disabled`:

  Field.

- `unconfirmed`:

  Field.

## Methods

### Public methods

- [`Authorization$new()`](#method-Authorization-new)

- [`Authorization$to_dict()`](#method-Authorization-to_dict)

- [`Authorization$bytes()`](#method-Authorization-bytes)

- [`Authorization$clone()`](#method-Authorization-clone)

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

Initializes the Authorization with the given parameters.

#### Usage

    Authorization$new(
      hash,
      device_model,
      platform,
      system_version,
      api_id,
      app_name,
      app_version,
      date_created,
      date_active,
      ip,
      country,
      region,
      current = NULL,
      official_app = NULL,
      password_pending = NULL,
      encrypted_requests_disabled = NULL,
      call_requests_disabled = NULL,
      unconfirmed = NULL
    )

#### Arguments

- `hash`:

  An integer representing the hash value.

- `device_model`:

  A string representing the device model.

- `platform`:

  A string representing the platform.

- `system_version`:

  A string representing the system version.

- `api_id`:

  An integer representing the API ID.

- `app_name`:

  A string representing the application name.

- `app_version`:

  A string representing the application version.

- `date_created`:

  Optional datetime representing when created.

- `date_active`:

  Optional datetime representing when last active.

- `ip`:

  A string representing the IP address.

- `country`:

  A string representing the country.

- `region`:

  A string representing the region.

- `current`:

  Optional boolean indicating if current session.

- `official_app`:

  Optional boolean indicating if official app.

- `password_pending`:

  Optional boolean indicating if password pending.

- `encrypted_requests_disabled`:

  Optional boolean indicating if encrypted requests disabled.

- `call_requests_disabled`:

  Optional boolean indicating if call requests disabled.

- `unconfirmed`:

  Optional boolean indicating if unconfirmed.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the Authorization object to a list (dictionary).

#### Usage

    Authorization$to_dict()

#### Returns

A list representation of the Authorization object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the Authorization object to bytes.

#### Usage

    Authorization$bytes()

#### Returns

A raw vector representing the serialized bytes of the Authorization
object. Reads an Authorization object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Authorization$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
