# InputMediaPoll

Telegram API type InputMediaPoll

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputMediaPoll`

## Public fields

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `poll`:

  Field.

- `correct_answers`:

  Field.

- `solution`:

  Field.

- `solution_entities`:

  Field.

## Methods

### Public methods

- [`InputMediaPoll$new()`](#method-InputMediaPoll-new)

- [`InputMediaPoll$to_dict()`](#method-InputMediaPoll-to_dict)

- [`InputMediaPoll$bytes()`](#method-InputMediaPoll-bytes)

- [`InputMediaPoll$clone()`](#method-InputMediaPoll-clone)

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

    InputMediaPoll$new(
      poll,
      correct_answers = NULL,
      solution = NULL,
      solution_entities = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputMediaPoll$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputMediaPoll$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputMediaPoll$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
