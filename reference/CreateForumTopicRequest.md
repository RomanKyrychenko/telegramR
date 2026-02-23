# CreateForumTopicRequest

Represents a request to create a forum topic in a channel.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `CreateForumTopicRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `title`:

  Field.

- `icon_color`:

  Field.

- `icon_emoji_id`:

  Field.

- `random_id`:

  Field.

- `send_as`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`CreateForumTopicRequest$new()`](#method-CreateForumTopicRequest-new)

- [`CreateForumTopicRequest$resolve()`](#method-CreateForumTopicRequest-resolve)

- [`CreateForumTopicRequest$to_dict()`](#method-CreateForumTopicRequest-to_dict)

- [`CreateForumTopicRequest$bytes()`](#method-CreateForumTopicRequest-bytes)

- [`CreateForumTopicRequest$clone()`](#method-CreateForumTopicRequest-clone)

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

Initialize the CreateForumTopicRequest.

#### Usage

    CreateForumTopicRequest$new(
      channel,
      title,
      icon_color = NULL,
      icon_emoji_id = NULL,
      random_id = NULL,
      send_as = NULL
    )

#### Arguments

- `channel`:

  The input channel.

- `title`:

  The title of the topic.

- `icon_color`:

  The icon color (optional).

- `icon_emoji_id`:

  The icon emoji ID (optional).

- `random_id`:

  The random ID (optional).

- `send_as`:

  The send as peer (optional).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the channel and send_as entities.

#### Usage

    CreateForumTopicRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utilities object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    CreateForumTopicRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    CreateForumTopicRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CreateForumTopicRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
