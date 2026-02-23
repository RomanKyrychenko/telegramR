# StarRefProgram

Telegram API type StarRefProgram

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `StarRefProgram`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`StarRefProgram$new()`](#method-StarRefProgram-new)

- [`StarRefProgram$to_dict()`](#method-StarRefProgram-to_dict)

- [`StarRefProgram$bytes()`](#method-StarRefProgram-bytes)

- [`StarRefProgram$clone()`](#method-StarRefProgram-clone)

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

    StarRefProgram$new(
      bot_id,
      commission_permille,
      duration_months = NULL,
      end_date = NULL,
      daily_revenue_per_user = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    StarRefProgram$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    StarRefProgram$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    StarRefProgram$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
