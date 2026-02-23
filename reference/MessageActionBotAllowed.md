# MessageActionBotAllowed

Telegram API type MessageActionBotAllowed

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageActionBotAllowed`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `attach_menu`:

  Field.

- `from_request`:

  Field.

- `domain`:

  Field.

- `app`:

  Field.

## Methods

### Public methods

- [`MessageActionBotAllowed$new()`](#method-MessageActionBotAllowed-new)

- [`MessageActionBotAllowed$to_dict()`](#method-MessageActionBotAllowed-to_dict)

- [`MessageActionBotAllowed$bytes()`](#method-MessageActionBotAllowed-bytes)

- [`MessageActionBotAllowed$clone()`](#method-MessageActionBotAllowed-clone)

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

    MessageActionBotAllowed$new(
      attach_menu = NULL,
      from_request = NULL,
      domain = NULL,
      app = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageActionBotAllowed$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageActionBotAllowed$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageActionBotAllowed$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
