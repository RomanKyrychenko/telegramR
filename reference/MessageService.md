# MessageService

Telegram API type MessageService

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageService`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `peer_id`:

  Field.

- `date`:

  Field.

- `action`:

  Field.

- `out`:

  Field.

- `mentioned`:

  Field.

- `media_unread`:

  Field.

- `reactions_are_possible`:

  Field.

- `silent`:

  Field.

- `post`:

  Field.

- `legacy`:

  Field.

- `from_id`:

  Field.

- `savedpeer_id`:

  Field.

- `reply_to`:

  Field.

- `reactions`:

  Field.

- `ttl_period`:

  Field.

## Methods

### Public methods

- [`MessageService$new()`](#method-MessageService-new)

- [`MessageService$to_dict()`](#method-MessageService-to_dict)

- [`MessageService$bytes()`](#method-MessageService-bytes)

- [`MessageService$clone()`](#method-MessageService-clone)

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

    MessageService$new(
      id,
      peer_id,
      date = NULL,
      action = NULL,
      out = NULL,
      mentioned = NULL,
      media_unread = NULL,
      reactions_are_possible = NULL,
      silent = NULL,
      post = NULL,
      legacy = NULL,
      from_id = NULL,
      savedpeer_id = NULL,
      reply_to = NULL,
      reactions = NULL,
      ttl_period = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageService$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageService$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageService$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
