# PollResults

Telegram API type PollResults

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PollResults`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `min`:

  Field.

- `results`:

  Field.

- `total_voters`:

  Field.

- `recent_voters`:

  Field.

- `solution`:

  Field.

- `solution_entities`:

  Field.

## Methods

### Public methods

- [`PollResults$new()`](#method-PollResults-new)

- [`PollResults$to_dict()`](#method-PollResults-to_dict)

- [`PollResults$bytes()`](#method-PollResults-bytes)

- [`PollResults$clone()`](#method-PollResults-clone)

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

    PollResults$new(
      min = NULL,
      results = NULL,
      total_voters = NULL,
      recent_voters = NULL,
      solution = NULL,
      solution_entities = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PollResults$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PollResults$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PollResults$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
