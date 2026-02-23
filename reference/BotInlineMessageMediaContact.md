# BotInlineMessageMediaContact

Telegram API type BotInlineMessageMediaContact

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotInlineMessageMediaContact`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `phone_number`:

  Field.

- `first_name`:

  Field.

- `last_name`:

  Field.

- `vcard`:

  Field.

- `reply_markup`:

  Field.

## Methods

### Public methods

- [`BotInlineMessageMediaContact$new()`](#method-BotInlineMessageMediaContact-new)

- [`BotInlineMessageMediaContact$to_dict()`](#method-BotInlineMessageMediaContact-to_dict)

- [`BotInlineMessageMediaContact$bytes()`](#method-BotInlineMessageMediaContact-bytes)

- [`BotInlineMessageMediaContact$clone()`](#method-BotInlineMessageMediaContact-clone)

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

Initializes the BotInlineMessageMediaContact with the given parameters.

#### Usage

    BotInlineMessageMediaContact$new(
      phone_number,
      first_name,
      last_name,
      vcard,
      reply_markup = NULL
    )

#### Arguments

- `phone_number`:

  A string representing the phone number.

- `first_name`:

  A string representing the first name.

- `last_name`:

  A string representing the last name.

- `vcard`:

  A string representing the vcard.

- `reply_markup`:

  A TLObject representing the reply markup. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotInlineMessageMediaContact object to a list (dictionary).

#### Usage

    BotInlineMessageMediaContact$to_dict()

#### Returns

A list representation of the BotInlineMessageMediaContact object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotInlineMessageMediaContact object to bytes.

#### Usage

    BotInlineMessageMediaContact$bytes()

#### Returns

A raw vector representing the serialized bytes of the
BotInlineMessageMediaContact object. Reads a
BotInlineMessageMediaContact object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotInlineMessageMediaContact$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
