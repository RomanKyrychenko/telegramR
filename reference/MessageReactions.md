# MessageReactions

Telegram API type MessageReactions

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageReactions`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `results`:

  Field.

- `min`:

  Field.

- `can_see_list`:

  Field.

- `reactions_as_tags`:

  Field.

- `recent_reactions`:

  Field.

- `top_reactors`:

  Field.

## Methods

### Public methods

- [`MessageReactions$new()`](#method-MessageReactions-new)

- [`MessageReactions$to_dict()`](#method-MessageReactions-to_dict)

- [`MessageReactions$bytes()`](#method-MessageReactions-bytes)

- [`MessageReactions$clone()`](#method-MessageReactions-clone)

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

    MessageReactions$new(
      results,
      min = NULL,
      can_see_list = NULL,
      reactions_as_tags = NULL,
      recent_reactions = NULL,
      top_reactors = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageReactions$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageReactions$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageReactions$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
