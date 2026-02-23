# MessageMediaPhoto

Telegram API type MessageMediaPhoto

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageMediaPhoto`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `spoiler`:

  Field.

- `photo`:

  Field.

- `ttl_seconds`:

  Field.

## Methods

### Public methods

- [`MessageMediaPhoto$new()`](#method-MessageMediaPhoto-new)

- [`MessageMediaPhoto$to_dict()`](#method-MessageMediaPhoto-to_dict)

- [`MessageMediaPhoto$bytes()`](#method-MessageMediaPhoto-bytes)

- [`MessageMediaPhoto$clone()`](#method-MessageMediaPhoto-clone)

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

    MessageMediaPhoto$new(spoiler = NULL, photo = NULL, ttl_seconds = NULL)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageMediaPhoto$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageMediaPhoto$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageMediaPhoto$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
