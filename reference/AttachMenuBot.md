# AttachMenuBot

Telegram API type AttachMenuBot

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `AttachMenuBot`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `bot_id`:

  Field.

- `short_name`:

  Field.

- `icons`:

  Field.

- `inactive`:

  Field.

- `has_settings`:

  Field.

- `request_write_access`:

  Field.

- `show_in_attach_menu`:

  Field.

- `show_in_side_menu`:

  Field.

- `side_menu_disclaimer_needed`:

  Field.

- `peer_types`:

  Field.

## Methods

### Public methods

- [`AttachMenuBot$new()`](#method-AttachMenuBot-new)

- [`AttachMenuBot$to_dict()`](#method-AttachMenuBot-to_dict)

- [`AttachMenuBot$bytes()`](#method-AttachMenuBot-bytes)

- [`AttachMenuBot$clone()`](#method-AttachMenuBot-clone)

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

Initializes the AttachMenuBot with the given parameters.

#### Usage

    AttachMenuBot$new(
      bot_id,
      short_name,
      icons,
      inactive = NULL,
      has_settings = NULL,
      request_write_access = NULL,
      show_in_attach_menu = NULL,
      show_in_side_menu = NULL,
      side_menu_disclaimer_needed = NULL,
      peer_types = NULL
    )

#### Arguments

- `bot_id`:

  An integer representing the bot ID.

- `short_name`:

  A string representing the short name.

- `icons`:

  A list of TypeAttachMenuBotIcon objects.

- `inactive`:

  Optional boolean indicating if inactive.

- `has_settings`:

  Optional boolean indicating if has settings.

- `request_write_access`:

  Optional boolean indicating if requests write access.

- `show_in_attach_menu`:

  Optional boolean indicating if shows in attach menu.

- `show_in_side_menu`:

  Optional boolean indicating if shows in side menu.

- `side_menu_disclaimer_needed`:

  Optional boolean indicating if side menu disclaimer needed.

- `peer_types`:

  Optional list of TypeAttachMenuPeerType objects.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the AttachMenuBot object to a list (dictionary).

#### Usage

    AttachMenuBot$to_dict()

#### Returns

A list representation of the AttachMenuBot object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the AttachMenuBot object to bytes.

#### Usage

    AttachMenuBot$bytes()

#### Returns

A raw vector representing the serialized bytes of the AttachMenuBot
object. Reads an AttachMenuBot object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AttachMenuBot$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
