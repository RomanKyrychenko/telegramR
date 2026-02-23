# MessageActionPrizeStars

Telegram API type MessageActionPrizeStars

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageActionPrizeStars`

## Public fields

- `stars`:

  Field.

- `transaction_id`:

  Field.

- `boostpeer`:

  Field.

- `giveaway_msg_id`:

  Field.

- `unclaimed`:

  Field.

## Methods

### Public methods

- [`MessageActionPrizeStars$new()`](#method-MessageActionPrizeStars-new)

- [`MessageActionPrizeStars$to_dict()`](#method-MessageActionPrizeStars-to_dict)

- [`MessageActionPrizeStars$bytes()`](#method-MessageActionPrizeStars-bytes)

- [`MessageActionPrizeStars$clone()`](#method-MessageActionPrizeStars-clone)

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

    MessageActionPrizeStars$new(
      stars,
      transaction_id,
      boostpeer,
      giveaway_msg_id,
      unclaimed = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageActionPrizeStars$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageActionPrizeStars$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageActionPrizeStars$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
