# PhoneCallDiscarded

Telegram API type PhoneCallDiscarded

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PhoneCallDiscarded`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `need_rating`:

  Field.

- `need_debug`:

  Field.

- `video`:

  Field.

- `reason`:

  Field.

- `duration`:

  Field.

## Methods

### Public methods

- [`PhoneCallDiscarded$new()`](#method-PhoneCallDiscarded-new)

- [`PhoneCallDiscarded$to_dict()`](#method-PhoneCallDiscarded-to_dict)

- [`PhoneCallDiscarded$bytes()`](#method-PhoneCallDiscarded-bytes)

- [`PhoneCallDiscarded$clone()`](#method-PhoneCallDiscarded-clone)

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

    PhoneCallDiscarded$new(
      id = NULL,
      need_rating = NULL,
      need_debug = NULL,
      video = NULL,
      reason = NULL,
      duration = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PhoneCallDiscarded$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PhoneCallDiscarded$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PhoneCallDiscarded$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
