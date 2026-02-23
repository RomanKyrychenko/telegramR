# MessagePeerReaction

Telegram API type MessagePeerReaction

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessagePeerReaction`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer_id`:

  Field.

- `date`:

  Field.

- `reaction`:

  Field.

- `big`:

  Field.

- `unread`:

  Field.

- `my`:

  Field.

## Methods

### Public methods

- [`MessagePeerReaction$new()`](#method-MessagePeerReaction-new)

- [`MessagePeerReaction$to_dict()`](#method-MessagePeerReaction-to_dict)

- [`MessagePeerReaction$bytes()`](#method-MessagePeerReaction-bytes)

- [`MessagePeerReaction$clone()`](#method-MessagePeerReaction-clone)

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

    MessagePeerReaction$new(
      peer_id,
      date = NULL,
      reaction,
      big = NULL,
      unread = NULL,
      my = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessagePeerReaction$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessagePeerReaction$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessagePeerReaction$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
