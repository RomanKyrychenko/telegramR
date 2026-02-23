# ChannelParticipantSelf

Telegram API type ChannelParticipantSelf

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChannelParticipantSelf`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `user_id`:

  Field.

- `inviter_id`:

  Field.

- `date`:

  Field.

- `via_request`:

  Field.

- `subscription_until_date`:

  Field.

## Methods

### Public methods

- [`ChannelParticipantSelf$new()`](#method-ChannelParticipantSelf-new)

- [`ChannelParticipantSelf$to_dict()`](#method-ChannelParticipantSelf-to_dict)

- [`ChannelParticipantSelf$bytes()`](#method-ChannelParticipantSelf-bytes)

- [`ChannelParticipantSelf$clone()`](#method-ChannelParticipantSelf-clone)

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

    ChannelParticipantSelf$new(
      user_id,
      inviter_id,
      date,
      via_request = NULL,
      subscription_until_date = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ChannelParticipantSelf$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ChannelParticipantSelf$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChannelParticipantSelf$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
