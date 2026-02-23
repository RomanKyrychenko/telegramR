# ChannelParticipantCreator

Telegram API type ChannelParticipantCreator

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChannelParticipantCreator`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `user_id`:

  Field.

- `admin_rights`:

  Field.

- `rank`:

  Field.

## Methods

### Public methods

- [`ChannelParticipantCreator$new()`](#method-ChannelParticipantCreator-new)

- [`ChannelParticipantCreator$to_dict()`](#method-ChannelParticipantCreator-to_dict)

- [`ChannelParticipantCreator$bytes()`](#method-ChannelParticipantCreator-bytes)

- [`ChannelParticipantCreator$clone()`](#method-ChannelParticipantCreator-clone)

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

    ChannelParticipantCreator$new(user_id, admin_rights, rank = NULL)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ChannelParticipantCreator$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ChannelParticipantCreator$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChannelParticipantCreator$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
