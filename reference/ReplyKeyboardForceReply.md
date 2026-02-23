# ReplyKeyboardForceReply

Telegram API type ReplyKeyboardForceReply

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ReplyKeyboardForceReply`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `single_use`:

  Field.

- `selective`:

  Field.

- `placeholder`:

  Field.

## Methods

### Public methods

- [`ReplyKeyboardForceReply$new()`](#method-ReplyKeyboardForceReply-new)

- [`ReplyKeyboardForceReply$to_dict()`](#method-ReplyKeyboardForceReply-to_dict)

- [`ReplyKeyboardForceReply$bytes()`](#method-ReplyKeyboardForceReply-bytes)

- [`ReplyKeyboardForceReply$clone()`](#method-ReplyKeyboardForceReply-clone)

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

    ReplyKeyboardForceReply$new(
      single_use = NULL,
      selective = NULL,
      placeholder = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ReplyKeyboardForceReply$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ReplyKeyboardForceReply$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReplyKeyboardForceReply$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
