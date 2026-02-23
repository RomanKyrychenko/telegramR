# PhoneCall

Telegram API type PhoneCall

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PhoneCall`

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

- `g_a_or_b`:

  Field.

- `key_fingerprint`:

  Field.

- `protocol`:

  Field.

- `connections`:

  Field.

- `start_date`:

  Field.

- `p2p_allowed`:

  Field.

- `video`:

  Field.

- `conference_supported`:

  Field.

- `custom_parameters`:

  Field.

## Methods

### Public methods

- [`PhoneCall$new()`](#method-PhoneCall-new)

- [`PhoneCall$to_dict()`](#method-PhoneCall-to_dict)

- [`PhoneCall$bytes()`](#method-PhoneCall-bytes)

- [`PhoneCall$clone()`](#method-PhoneCall-clone)

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

    PhoneCall$new(
      id = NULL,
      access_hash = NULL,
      date = NULL,
      admin_id = NULL,
      participant_id = NULL,
      g_a_or_b = NULL,
      key_fingerprint = NULL,
      protocol = NULL,
      connections = NULL,
      start_date = NULL,
      p2p_allowed = NULL,
      video = NULL,
      conference_supported = NULL,
      custom_parameters = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PhoneCall$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PhoneCall$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PhoneCall$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
