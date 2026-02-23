# ChatParticipant

Telegram API type ChatParticipant

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChatParticipant`

## Public fields

- `constructor_id`:

  Field.

- `subclass_of_id`:

  Field.

- `user_id`:

  Field.

- `inviter_id`:

  Field.

- `date`:

  Field.

## Methods

### Public methods

- [`ChatParticipant$new()`](#method-ChatParticipant-new)

- [`ChatParticipant$to_dict()`](#method-ChatParticipant-to_dict)

- [`ChatParticipant$bytes()`](#method-ChatParticipant-bytes)

- [`ChatParticipant$from_reader()`](#method-ChatParticipant-from_reader)

- [`ChatParticipant$clone()`](#method-ChatParticipant-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    ChatParticipant$new(user_id, inviter_id, date)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ChatParticipant$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ChatParticipant$bytes()

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ChatParticipant$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChatParticipant$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
