# BusinessBotRights

Telegram API type BusinessBotRights

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BusinessBotRights`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `reply`:

  Field.

- `read_messages`:

  Field.

- `delete_sent_messages`:

  Field.

- `delete_received_messages`:

  Field.

- `edit_name`:

  Field.

- `edit_bio`:

  Field.

- `edit_profile_photo`:

  Field.

- `edit_username`:

  Field.

- `view_gifts`:

  Field.

- `sell_gifts`:

  Field.

- `change_gift_settings`:

  Field.

- `transfer_and_upgrade_gifts`:

  Field.

- `transfer_stars`:

  Field.

- `manage_stories`:

  Field.

## Methods

### Public methods

- [`BusinessBotRights$new()`](#method-BusinessBotRights-new)

- [`BusinessBotRights$to_dict()`](#method-BusinessBotRights-to_dict)

- [`BusinessBotRights$clone()`](#method-BusinessBotRights-clone)

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

    BusinessBotRights$new(
      reply = NULL,
      read_messages = NULL,
      delete_sent_messages = NULL,
      delete_received_messages = NULL,
      edit_name = NULL,
      edit_bio = NULL,
      edit_profile_photo = NULL,
      edit_username = NULL,
      view_gifts = NULL,
      sell_gifts = NULL,
      change_gift_settings = NULL,
      transfer_and_upgrade_gifts = NULL,
      transfer_stars = NULL,
      manage_stories = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    BusinessBotRights$to_dict()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BusinessBotRights$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
