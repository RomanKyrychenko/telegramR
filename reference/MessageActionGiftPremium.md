# MessageActionGiftPremium

Telegram API type MessageActionGiftPremium

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageActionGiftPremium`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `currency`:

  Field.

- `amount`:

  Field.

- `months`:

  Field.

- `crypto_currency`:

  Field.

- `crypto_amount`:

  Field.

- `message`:

  Field.

## Methods

### Public methods

- [`MessageActionGiftPremium$new()`](#method-MessageActionGiftPremium-new)

- [`MessageActionGiftPremium$to_dict()`](#method-MessageActionGiftPremium-to_dict)

- [`MessageActionGiftPremium$bytes()`](#method-MessageActionGiftPremium-bytes)

- [`MessageActionGiftPremium$clone()`](#method-MessageActionGiftPremium-clone)

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

    MessageActionGiftPremium$new(
      currency,
      amount,
      months,
      crypto_currency = NULL,
      crypto_amount = NULL,
      message = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageActionGiftPremium$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageActionGiftPremium$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageActionGiftPremium$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
