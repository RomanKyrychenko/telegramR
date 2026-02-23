# UpdateReadChannelDiscussionInbox

Telegram API type UpdateReadChannelDiscussionInbox

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `UpdateReadChannelDiscussionInbox`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`UpdateReadChannelDiscussionInbox$new()`](#method-UpdateReadChannelDiscussionInbox-new)

- [`UpdateReadChannelDiscussionInbox$to_dict()`](#method-UpdateReadChannelDiscussionInbox-to_dict)

- [`UpdateReadChannelDiscussionInbox$bytes()`](#method-UpdateReadChannelDiscussionInbox-bytes)

- [`UpdateReadChannelDiscussionInbox$clone()`](#method-UpdateReadChannelDiscussionInbox-clone)

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

    UpdateReadChannelDiscussionInbox$new(
      channel_id,
      top_msg_id,
      read_max_id,
      broadcast_id = NULL,
      broadcast_post = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    UpdateReadChannelDiscussionInbox$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    UpdateReadChannelDiscussionInbox$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateReadChannelDiscussionInbox$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
