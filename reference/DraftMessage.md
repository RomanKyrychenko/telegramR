# DraftMessage

Telegram API type DraftMessage

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `DraftMessage`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `message`:

  Field.

- `date`:

  Field.

- `no_webpage`:

  Field.

- `invert_media`:

  Field.

- `reply_to`:

  Field.

- `entities`:

  Field.

- `media`:

  Field.

- `effect`:

  Field.

- `suggested_post`:

  Field.

## Methods

### Public methods

- [`DraftMessage$new()`](#method-DraftMessage-new)

- [`DraftMessage$to_dict()`](#method-DraftMessage-to_dict)

- [`DraftMessage$bytes()`](#method-DraftMessage-bytes)

- [`DraftMessage$clone()`](#method-DraftMessage-clone)

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

    DraftMessage$new(
      message,
      date = NULL,
      no_webpage = NULL,
      invert_media = NULL,
      reply_to = NULL,
      entities = NULL,
      media = NULL,
      effect = NULL,
      suggested_post = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    DraftMessage$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    DraftMessage$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DraftMessage$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
