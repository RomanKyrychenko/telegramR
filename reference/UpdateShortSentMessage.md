# UpdateShortSentMessage

Telegram API type UpdateShortSentMessage

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `UpdateShortSentMessage`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`UpdateShortSentMessage$new()`](#method-UpdateShortSentMessage-new)

- [`UpdateShortSentMessage$to_dict()`](#method-UpdateShortSentMessage-to_dict)

- [`UpdateShortSentMessage$bytes()`](#method-UpdateShortSentMessage-bytes)

- [`UpdateShortSentMessage$clone()`](#method-UpdateShortSentMessage-clone)

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

    UpdateShortSentMessage$new(
      id,
      pts,
      pts_count,
      date,
      out = NULL,
      media = NULL,
      entities = NULL,
      ttl_period = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    UpdateShortSentMessage$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    UpdateShortSentMessage$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateShortSentMessage$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
