# StarsRevenueStatus

Telegram API type StarsRevenueStatus

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `StarsRevenueStatus`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`StarsRevenueStatus$new()`](#method-StarsRevenueStatus-new)

- [`StarsRevenueStatus$to_dict()`](#method-StarsRevenueStatus-to_dict)

- [`StarsRevenueStatus$bytes()`](#method-StarsRevenueStatus-bytes)

- [`StarsRevenueStatus$clone()`](#method-StarsRevenueStatus-clone)

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

    StarsRevenueStatus$new(
      current_balance,
      available_balance,
      overall_revenue,
      withdrawal_enabled = NULL,
      next_withdrawal_at = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    StarsRevenueStatus$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    StarsRevenueStatus$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    StarsRevenueStatus$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
