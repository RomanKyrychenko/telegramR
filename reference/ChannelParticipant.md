# ChannelParticipant

Telegram API type ChannelParticipant

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChannelParticipant`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `user_id`:

  Field.

- `date`:

  Field.

- `subscription_until_date`:

  Field.

## Methods

### Public methods

- [`ChannelParticipant$new()`](#method-ChannelParticipant-new)

- [`ChannelParticipant$to_dict()`](#method-ChannelParticipant-to_dict)

- [`ChannelParticipant$bytes()`](#method-ChannelParticipant-bytes)

- [`ChannelParticipant$clone()`](#method-ChannelParticipant-clone)

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

    ChannelParticipant$new(user_id, date, subscription_until_date = NULL)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ChannelParticipant$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ChannelParticipant$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChannelParticipant$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
