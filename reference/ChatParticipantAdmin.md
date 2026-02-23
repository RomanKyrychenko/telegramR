# ChatParticipantAdmin

Telegram API type ChatParticipantAdmin

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChatParticipantAdmin`

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

- [`ChatParticipantAdmin$new()`](#method-ChatParticipantAdmin-new)

- [`ChatParticipantAdmin$to_dict()`](#method-ChatParticipantAdmin-to_dict)

- [`ChatParticipantAdmin$bytes()`](#method-ChatParticipantAdmin-bytes)

- [`ChatParticipantAdmin$from_reader()`](#method-ChatParticipantAdmin-from_reader)

- [`ChatParticipantAdmin$clone()`](#method-ChatParticipantAdmin-clone)

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

    ChatParticipantAdmin$new(user_id, inviter_id, date)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ChatParticipantAdmin$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ChatParticipantAdmin$bytes()

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ChatParticipantAdmin$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChatParticipantAdmin$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
