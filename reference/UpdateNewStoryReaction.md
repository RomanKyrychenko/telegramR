# UpdateNewStoryReaction

Telegram API type UpdateNewStoryReaction

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `UpdateNewStoryReaction`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`UpdateNewStoryReaction$new()`](#method-UpdateNewStoryReaction-new)

- [`UpdateNewStoryReaction$to_dict()`](#method-UpdateNewStoryReaction-to_dict)

- [`UpdateNewStoryReaction$bytes()`](#method-UpdateNewStoryReaction-bytes)

- [`UpdateNewStoryReaction$clone()`](#method-UpdateNewStoryReaction-clone)

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

    UpdateNewStoryReaction$new(story_id, peer, reaction)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    UpdateNewStoryReaction$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    UpdateNewStoryReaction$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateNewStoryReaction$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
