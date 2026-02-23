# ChannelParticipantAdmin

Telegram API type ChannelParticipantAdmin

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChannelParticipantAdmin`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `user_id`:

  Field.

- `promoted_by`:

  Field.

- `date`:

  Field.

- `admin_rights`:

  Field.

- `can_edit`:

  Field.

- `is_self`:

  Field.

- `inviter_id`:

  Field.

- `rank`:

  Field.

## Methods

### Public methods

- [`ChannelParticipantAdmin$new()`](#method-ChannelParticipantAdmin-new)

- [`ChannelParticipantAdmin$to_dict()`](#method-ChannelParticipantAdmin-to_dict)

- [`ChannelParticipantAdmin$bytes()`](#method-ChannelParticipantAdmin-bytes)

- [`ChannelParticipantAdmin$clone()`](#method-ChannelParticipantAdmin-clone)

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

    ChannelParticipantAdmin$new(
      user_id,
      promoted_by,
      date,
      admin_rights,
      can_edit = NULL,
      is_self = NULL,
      inviter_id = NULL,
      rank = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ChannelParticipantAdmin$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ChannelParticipantAdmin$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChannelParticipantAdmin$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
