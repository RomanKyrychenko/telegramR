# MessageActionGiftTon

Telegram API type MessageActionGiftTon

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageActionGiftTon`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `currency`:

  Field.

- `amount`:

  Field.

- `crypto_currency`:

  Field.

- `crypto_amount`:

  Field.

- `transaction_id`:

  Field.

## Methods

### Public methods

- [`MessageActionGiftTon$new()`](#method-MessageActionGiftTon-new)

- [`MessageActionGiftTon$to_dict()`](#method-MessageActionGiftTon-to_dict)

- [`MessageActionGiftTon$bytes()`](#method-MessageActionGiftTon-bytes)

- [`MessageActionGiftTon$clone()`](#method-MessageActionGiftTon-clone)

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

    MessageActionGiftTon$new(
      currency,
      amount,
      crypto_currency,
      crypto_amount,
      transaction_id = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageActionGiftTon$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageActionGiftTon$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageActionGiftTon$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
