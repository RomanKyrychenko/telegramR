# WallPaperSettings

Telegram API type WallPaperSettings

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `WallPaperSettings`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`WallPaperSettings$new()`](#method-WallPaperSettings-new)

- [`WallPaperSettings$to_dict()`](#method-WallPaperSettings-to_dict)

- [`WallPaperSettings$bytes()`](#method-WallPaperSettings-bytes)

- [`WallPaperSettings$clone()`](#method-WallPaperSettings-clone)

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

    WallPaperSettings$new(
      blur = NULL,
      motion = NULL,
      background_color = NULL,
      second_background_color = NULL,
      third_background_color = NULL,
      fourth_background_color = NULL,
      intensity = NULL,
      rotation = NULL,
      emoticon = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    WallPaperSettings$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    WallPaperSettings$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    WallPaperSettings$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
