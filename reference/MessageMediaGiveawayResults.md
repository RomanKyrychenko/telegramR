# MessageMediaGiveawayResults

Telegram API type MessageMediaGiveawayResults

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageMediaGiveawayResults`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel_id`:

  Field.

- `launch_msg_id`:

  Field.

- `winners_count`:

  Field.

- `unclaimed_count`:

  Field.

- `winners`:

  Field.

- `until_date`:

  Field.

- `only_new_subscribers`:

  Field.

- `refunded`:

  Field.

- `additionalpeers_count`:

  Field.

- `months`:

  Field.

- `stars`:

  Field.

- `prize_description`:

  Field.

## Methods

### Public methods

- [`MessageMediaGiveawayResults$new()`](#method-MessageMediaGiveawayResults-new)

- [`MessageMediaGiveawayResults$to_dict()`](#method-MessageMediaGiveawayResults-to_dict)

- [`MessageMediaGiveawayResults$bytes()`](#method-MessageMediaGiveawayResults-bytes)

- [`MessageMediaGiveawayResults$clone()`](#method-MessageMediaGiveawayResults-clone)

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

    MessageMediaGiveawayResults$new(
      channel_id,
      launch_msg_id,
      winners_count,
      unclaimed_count,
      winners,
      until_date = NULL,
      only_new_subscribers = NULL,
      refunded = NULL,
      additionalpeers_count = NULL,
      months = NULL,
      stars = NULL,
      prize_description = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageMediaGiveawayResults$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageMediaGiveawayResults$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageMediaGiveawayResults$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
