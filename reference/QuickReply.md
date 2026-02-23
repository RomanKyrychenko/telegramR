# QuickReply

Telegram API type QuickReply

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `QuickReply`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `shortcut_id`:

  Field.

- `shortcut`:

  Field.

- `top_message`:

  Field.

- `count`:

  Field.

## Methods

### Public methods

- [`QuickReply$new()`](#method-QuickReply-new)

- [`QuickReply$to_dict()`](#method-QuickReply-to_dict)

- [`QuickReply$bytes()`](#method-QuickReply-bytes)

- [`QuickReply$clone()`](#method-QuickReply-clone)

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

    QuickReply$new(
      shortcut_id = NULL,
      shortcut = NULL,
      top_message = NULL,
      count = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    QuickReply$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    QuickReply$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    QuickReply$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
