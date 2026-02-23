# ThemeSettings

Telegram API type ThemeSettings

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ThemeSettings`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`ThemeSettings$new()`](#method-ThemeSettings-new)

- [`ThemeSettings$to_dict()`](#method-ThemeSettings-to_dict)

- [`ThemeSettings$bytes()`](#method-ThemeSettings-bytes)

- [`ThemeSettings$clone()`](#method-ThemeSettings-clone)

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

    ThemeSettings$new(
      base_theme,
      accent_color,
      message_colors_animated = NULL,
      outbox_accent_color = NULL,
      message_colors = NULL,
      wallpaper = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ThemeSettings$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ThemeSettings$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ThemeSettings$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
