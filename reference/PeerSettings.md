# PeerSettings

Telegram API type PeerSettings

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PeerSettings`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `report_spam`:

  Field.

- `add_contact`:

  Field.

- `block_contact`:

  Field.

- `share_contact`:

  Field.

- `need_contacts_exception`:

  Field.

- `report_geo`:

  Field.

- `autoarchived`:

  Field.

- `invite_members`:

  Field.

- `request_chat_broadcast`:

  Field.

- `business_bot_paused`:

  Field.

- `business_bot_can_reply`:

  Field.

- `geo_distance`:

  Field.

- `request_chat_title`:

  Field.

- `request_chat_date`:

  Field.

- `business_bot_id`:

  Field.

- `business_bot_manage_url`:

  Field.

- `charge_paid_message_stars`:

  Field.

- `registration_month`:

  Field.

- `phone_country`:

  Field.

- `name_change_date`:

  Field.

- `photo_change_date`:

  Field.

## Methods

### Public methods

- [`PeerSettings$new()`](#method-PeerSettings-new)

- [`PeerSettings$to_dict()`](#method-PeerSettings-to_dict)

- [`PeerSettings$bytes()`](#method-PeerSettings-bytes)

- [`PeerSettings$clone()`](#method-PeerSettings-clone)

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

    PeerSettings$new(
      report_spam = NULL,
      add_contact = NULL,
      block_contact = NULL,
      share_contact = NULL,
      need_contacts_exception = NULL,
      report_geo = NULL,
      autoarchived = NULL,
      invite_members = NULL,
      request_chat_broadcast = NULL,
      business_bot_paused = NULL,
      business_bot_can_reply = NULL,
      geo_distance = NULL,
      request_chat_title = NULL,
      request_chat_date = NULL,
      business_bot_id = NULL,
      business_bot_manage_url = NULL,
      charge_paid_message_stars = NULL,
      registration_month = NULL,
      phone_country = NULL,
      name_change_date = NULL,
      photo_change_date = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PeerSettings$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PeerSettings$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PeerSettings$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
