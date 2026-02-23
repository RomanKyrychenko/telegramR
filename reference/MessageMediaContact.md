# MessageMediaContact

Telegram API type MessageMediaContact

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageMediaContact`

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

- `user_id`:

  Field.

## Methods

### Public methods

- [`MessageMediaContact$new()`](#method-MessageMediaContact-new)

- [`MessageMediaContact$to_dict()`](#method-MessageMediaContact-to_dict)

- [`MessageMediaContact$bytes()`](#method-MessageMediaContact-bytes)

- [`MessageMediaContact$clone()`](#method-MessageMediaContact-clone)

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

    MessageMediaContact$new(phone_number, first_name, last_name, vcard, user_id)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageMediaContact$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageMediaContact$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageMediaContact$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
