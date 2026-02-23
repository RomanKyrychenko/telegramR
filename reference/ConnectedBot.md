# ConnectedBot

Telegram API type ConnectedBot

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ConnectedBot`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `bot_id`:

  Field.

- `recipients`:

  Field.

- `rights`:

  Field.

## Methods

### Public methods

- [`ConnectedBot$new()`](#method-ConnectedBot-new)

- [`ConnectedBot$to_dict()`](#method-ConnectedBot-to_dict)

- [`ConnectedBot$bytes()`](#method-ConnectedBot-bytes)

- [`ConnectedBot$clone()`](#method-ConnectedBot-clone)

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

    ConnectedBot$new(bot_id, recipients, rights)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ConnectedBot$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ConnectedBot$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ConnectedBot$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
