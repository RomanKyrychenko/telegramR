# InputKeyboardButtonRequestPeer

Telegram API type InputKeyboardButtonRequestPeer

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputKeyboardButtonRequestPeer`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `text`:

  Field.

- `button_id`:

  Field.

- `peer_type`:

  Field.

- `max_quantity`:

  Field.

- `name_requested`:

  Field.

- `username_requested`:

  Field.

- `photo_requested`:

  Field.

## Methods

### Public methods

- [`InputKeyboardButtonRequestPeer$new()`](#method-InputKeyboardButtonRequestPeer-new)

- [`InputKeyboardButtonRequestPeer$to_list()`](#method-InputKeyboardButtonRequestPeer-to_list)

- [`InputKeyboardButtonRequestPeer$bytes()`](#method-InputKeyboardButtonRequestPeer-bytes)

- [`InputKeyboardButtonRequestPeer$clone()`](#method-InputKeyboardButtonRequestPeer-clone)

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
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InputKeyboardButtonRequestPeer$new(
      text,
      button_id,
      peer_type,
      max_quantity,
      name_requested = NULL,
      username_requested = NULL,
      photo_requested = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InputKeyboardButtonRequestPeer$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputKeyboardButtonRequestPeer$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputKeyboardButtonRequestPeer$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
