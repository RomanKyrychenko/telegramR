# PhoneCallWaiting

Telegram API type PhoneCallWaiting

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PhoneCallWaiting`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `access_hash`:

  Field.

- `date`:

  Field.

- `admin_id`:

  Field.

- `participant_id`:

  Field.

- `protocol`:

  Field.

- `video`:

  Field.

- `receive_date`:

  Field.

## Methods

### Public methods

- [`PhoneCallWaiting$new()`](#method-PhoneCallWaiting-new)

- [`PhoneCallWaiting$to_dict()`](#method-PhoneCallWaiting-to_dict)

- [`PhoneCallWaiting$bytes()`](#method-PhoneCallWaiting-bytes)

- [`PhoneCallWaiting$clone()`](#method-PhoneCallWaiting-clone)

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

    PhoneCallWaiting$new(
      id = NULL,
      access_hash = NULL,
      date = NULL,
      admin_id = NULL,
      participant_id = NULL,
      protocol = NULL,
      video = NULL,
      receive_date = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PhoneCallWaiting$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PhoneCallWaiting$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PhoneCallWaiting$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
