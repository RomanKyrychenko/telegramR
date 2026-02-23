# MessageActionGiftCode

Telegram API type MessageActionGiftCode

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageActionGiftCode`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `months`:

  Field.

- `slug`:

  Field.

- `via_giveaway`:

  Field.

- `unclaimed`:

  Field.

- `boostpeer`:

  Field.

- `currency`:

  Field.

- `amount`:

  Field.

- `crypto_currency`:

  Field.

- `crypto_amount`:

  Field.

- `message`:

  Field.

## Methods

### Public methods

- [`MessageActionGiftCode$new()`](#method-MessageActionGiftCode-new)

- [`MessageActionGiftCode$to_dict()`](#method-MessageActionGiftCode-to_dict)

- [`MessageActionGiftCode$bytes()`](#method-MessageActionGiftCode-bytes)

- [`MessageActionGiftCode$clone()`](#method-MessageActionGiftCode-clone)

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

    MessageActionGiftCode$new(
      months,
      slug,
      via_giveaway = NULL,
      unclaimed = NULL,
      boostpeer = NULL,
      currency = NULL,
      amount = NULL,
      crypto_currency = NULL,
      crypto_amount = NULL,
      message = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageActionGiftCode$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageActionGiftCode$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageActionGiftCode$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
