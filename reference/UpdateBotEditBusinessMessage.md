# UpdateBotEditBusinessMessage

Telegram API type UpdateBotEditBusinessMessage

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `UpdateBotEditBusinessMessage`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`UpdateBotEditBusinessMessage$new()`](#method-UpdateBotEditBusinessMessage-new)

- [`UpdateBotEditBusinessMessage$to_dict()`](#method-UpdateBotEditBusinessMessage-to_dict)

- [`UpdateBotEditBusinessMessage$bytes()`](#method-UpdateBotEditBusinessMessage-bytes)

- [`UpdateBotEditBusinessMessage$clone()`](#method-UpdateBotEditBusinessMessage-clone)

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

    UpdateBotEditBusinessMessage$new(
      connection_id,
      message,
      qts,
      reply_to_message = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    UpdateBotEditBusinessMessage$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    UpdateBotEditBusinessMessage$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateBotEditBusinessMessage$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
