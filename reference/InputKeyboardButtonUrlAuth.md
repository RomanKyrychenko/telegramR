# InputKeyboardButtonUrlAuth

Telegram API type InputKeyboardButtonUrlAuth

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputKeyboardButtonUrlAuth`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `text`:

  Field.

- `url`:

  Field.

- `bot`:

  Field.

- `request_write_access`:

  Field.

- `fwd_text`:

  Field.

## Methods

### Public methods

- [`InputKeyboardButtonUrlAuth$new()`](#method-InputKeyboardButtonUrlAuth-new)

- [`InputKeyboardButtonUrlAuth$to_dict()`](#method-InputKeyboardButtonUrlAuth-to_dict)

- [`InputKeyboardButtonUrlAuth$bytes()`](#method-InputKeyboardButtonUrlAuth-bytes)

- [`InputKeyboardButtonUrlAuth$clone()`](#method-InputKeyboardButtonUrlAuth-clone)

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

    InputKeyboardButtonUrlAuth$new(
      text,
      url,
      bot,
      request_write_access = NULL,
      fwd_text = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputKeyboardButtonUrlAuth$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputKeyboardButtonUrlAuth$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputKeyboardButtonUrlAuth$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
