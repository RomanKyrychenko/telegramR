# ChatParticipants

Telegram API type ChatParticipants

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChatParticipants`

## Public fields

- `constructor_id`:

  Field.

- `subclass_of_id`:

  Field.

- `chat_id`:

  Field.

- `participants`:

  Field.

- `version`:

  Field.

## Methods

### Public methods

- [`ChatParticipants$new()`](#method-ChatParticipants-new)

- [`ChatParticipants$to_dict()`](#method-ChatParticipants-to_dict)

- [`ChatParticipants$bytes()`](#method-ChatParticipants-bytes)

- [`ChatParticipants$from_reader()`](#method-ChatParticipants-from_reader)

- [`ChatParticipants$clone()`](#method-ChatParticipants-clone)

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

    ChatParticipants$new(chat_id, participants, version)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ChatParticipants$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ChatParticipants$bytes()

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ChatParticipants$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChatParticipants$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
