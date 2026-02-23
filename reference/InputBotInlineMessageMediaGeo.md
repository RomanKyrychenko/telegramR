# InputBotInlineMessageMediaGeo

Telegram API type InputBotInlineMessageMediaGeo

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputBotInlineMessageMediaGeo`

## Public fields

- `geo_point`:

  Field.

- `heading`:

  Field.

- `period`:

  Field.

- `proximity_notification_radius`:

  Field.

- `reply_markup`:

  Field.

## Methods

### Public methods

- [`InputBotInlineMessageMediaGeo$new()`](#method-InputBotInlineMessageMediaGeo-new)

- [`InputBotInlineMessageMediaGeo$to_list()`](#method-InputBotInlineMessageMediaGeo-to_list)

- [`InputBotInlineMessageMediaGeo$bytes()`](#method-InputBotInlineMessageMediaGeo-bytes)

- [`InputBotInlineMessageMediaGeo$clone()`](#method-InputBotInlineMessageMediaGeo-clone)

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
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InputBotInlineMessageMediaGeo$new(
      geo_point,
      heading = NULL,
      period = NULL,
      proximity_notification_radius = NULL,
      reply_markup = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InputBotInlineMessageMediaGeo$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputBotInlineMessageMediaGeo$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputBotInlineMessageMediaGeo$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
