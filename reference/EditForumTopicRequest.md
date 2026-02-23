# EditForumTopicRequest

Represents a request to edit a forum topic in a channel.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `EditForumTopicRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `topic_id`:

  Field.

- `title`:

  Field.

- `icon_emoji_id`:

  Field.

- `closed`:

  Field.

- `hidden`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`EditForumTopicRequest$new()`](#method-EditForumTopicRequest-new)

- [`EditForumTopicRequest$resolve()`](#method-EditForumTopicRequest-resolve)

- [`EditForumTopicRequest$to_dict()`](#method-EditForumTopicRequest-to_dict)

- [`EditForumTopicRequest$bytes()`](#method-EditForumTopicRequest-bytes)

- [`EditForumTopicRequest$clone()`](#method-EditForumTopicRequest-clone)

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
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize the EditForumTopicRequest.

#### Usage

    EditForumTopicRequest$new(
      channel,
      topic_id,
      title = NULL,
      icon_emoji_id = NULL,
      closed = NULL,
      hidden = NULL
    )

#### Arguments

- `channel`:

  The input channel.

- `topic_id`:

  The topic ID.

- `title`:

  The title (optional).

- `icon_emoji_id`:

  The icon emoji ID (optional).

- `closed`:

  Whether the topic is closed (optional).

- `hidden`:

  Whether the topic is hidden (optional).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the channel entity.

#### Usage

    EditForumTopicRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utilities object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    EditForumTopicRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    EditForumTopicRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EditForumTopicRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
