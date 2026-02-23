# PostInteractionCountersStory

Telegram API type PostInteractionCountersStory

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PostInteractionCountersStory`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `story_id`:

  Field.

- `views`:

  Field.

- `forwards`:

  Field.

- `reactions`:

  Field.

## Methods

### Public methods

- [`PostInteractionCountersStory$new()`](#method-PostInteractionCountersStory-new)

- [`PostInteractionCountersStory$to_dict()`](#method-PostInteractionCountersStory-to_dict)

- [`PostInteractionCountersStory$bytes()`](#method-PostInteractionCountersStory-bytes)

- [`PostInteractionCountersStory$clone()`](#method-PostInteractionCountersStory-clone)

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

    PostInteractionCountersStory$new(
      story_id = NULL,
      views = NULL,
      forwards = NULL,
      reactions = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PostInteractionCountersStory$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PostInteractionCountersStory$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PostInteractionCountersStory$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
