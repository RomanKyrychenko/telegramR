# MessageMediaPoll

Telegram API type MessageMediaPoll

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageMediaPoll`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `poll`:

  Field.

- `results`:

  Field.

## Methods

### Public methods

- [`MessageMediaPoll$new()`](#method-MessageMediaPoll-new)

- [`MessageMediaPoll$to_dict()`](#method-MessageMediaPoll-to_dict)

- [`MessageMediaPoll$bytes()`](#method-MessageMediaPoll-bytes)

- [`MessageMediaPoll$clone()`](#method-MessageMediaPoll-clone)

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

    MessageMediaPoll$new(poll, results)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageMediaPoll$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageMediaPoll$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageMediaPoll$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
