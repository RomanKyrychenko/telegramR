# PhoneCallRequested

Telegram API type PhoneCallRequested

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PhoneCallRequested`

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

- `g_a_hash`:

  Field.

- `protocol`:

  Field.

- `video`:

  Field.

## Methods

### Public methods

- [`PhoneCallRequested$new()`](#method-PhoneCallRequested-new)

- [`PhoneCallRequested$to_dict()`](#method-PhoneCallRequested-to_dict)

- [`PhoneCallRequested$bytes()`](#method-PhoneCallRequested-bytes)

- [`PhoneCallRequested$clone()`](#method-PhoneCallRequested-clone)

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

    PhoneCallRequested$new(
      id = NULL,
      access_hash = NULL,
      date = NULL,
      admin_id = NULL,
      participant_id = NULL,
      g_a_hash = NULL,
      protocol = NULL,
      video = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PhoneCallRequested$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PhoneCallRequested$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PhoneCallRequested$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
