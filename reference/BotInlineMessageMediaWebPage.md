# BotInlineMessageMediaWebPage

Telegram API type BotInlineMessageMediaWebPage

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotInlineMessageMediaWebPage`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `message`:

  Field.

- `url`:

  Field.

- `invert_media`:

  Field.

- `force_large_media`:

  Field.

- `force_small_media`:

  Field.

- `manual`:

  Field.

- `safe`:

  Field.

- `entities`:

  Field.

- `reply_markup`:

  Field.

## Methods

### Public methods

- [`BotInlineMessageMediaWebPage$new()`](#method-BotInlineMessageMediaWebPage-new)

- [`BotInlineMessageMediaWebPage$to_dict()`](#method-BotInlineMessageMediaWebPage-to_dict)

- [`BotInlineMessageMediaWebPage$clone()`](#method-BotInlineMessageMediaWebPage-clone)

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

    BotInlineMessageMediaWebPage$new(
      message,
      url,
      invert_media = NULL,
      force_large_media = NULL,
      force_small_media = NULL,
      manual = NULL,
      safe = NULL,
      entities = NULL,
      reply_markup = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    BotInlineMessageMediaWebPage$to_dict()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotInlineMessageMediaWebPage$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
