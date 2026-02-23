# ReactionsNotifySettings

Telegram API type ReactionsNotifySettings

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ReactionsNotifySettings`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `sound`:

  Field.

- `show_previews`:

  Field.

- `messages_notify_from`:

  Field.

- `stories_notify_from`:

  Field.

## Methods

### Public methods

- [`ReactionsNotifySettings$new()`](#method-ReactionsNotifySettings-new)

- [`ReactionsNotifySettings$to_dict()`](#method-ReactionsNotifySettings-to_dict)

- [`ReactionsNotifySettings$bytes()`](#method-ReactionsNotifySettings-bytes)

- [`ReactionsNotifySettings$clone()`](#method-ReactionsNotifySettings-clone)

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

    ReactionsNotifySettings$new(
      sound = NULL,
      show_previews = NULL,
      messages_notify_from = NULL,
      stories_notify_from = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ReactionsNotifySettings$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ReactionsNotifySettings$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReactionsNotifySettings$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
