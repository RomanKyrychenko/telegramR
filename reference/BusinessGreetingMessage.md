# BusinessGreetingMessage

Telegram API type BusinessGreetingMessage

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BusinessGreetingMessage`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `shortcut_id`:

  Field.

- `recipients`:

  Field.

- `no_activity_days`:

  Field.

## Methods

### Public methods

- [`BusinessGreetingMessage$new()`](#method-BusinessGreetingMessage-new)

- [`BusinessGreetingMessage$to_dict()`](#method-BusinessGreetingMessage-to_dict)

- [`BusinessGreetingMessage$clone()`](#method-BusinessGreetingMessage-clone)

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

    BusinessGreetingMessage$new(shortcut_id, recipients, no_activity_days)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    BusinessGreetingMessage$to_dict()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BusinessGreetingMessage$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
