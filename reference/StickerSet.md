# StickerSet

Telegram API type StickerSet

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `StickerSet`

## Methods

### Public methods

- [`StickerSet$new()`](#method-StickerSet-new)

- [`StickerSet$to_dict()`](#method-StickerSet-to_dict)

- [`StickerSet$bytes()`](#method-StickerSet-bytes)

- [`StickerSet$clone()`](#method-StickerSet-clone)

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

    StickerSet$new(
      id = NULL,
      access_hash = NULL,
      title = NULL,
      short_name = NULL,
      count = NULL,
      hash = NULL,
      archived = NULL,
      official = NULL,
      masks = NULL,
      emojis = NULL,
      text_color = NULL,
      channel_emoji_status = NULL,
      creator = NULL,
      installed_date = NULL,
      thumbs = NULL,
      thumb_dc_id = NULL,
      thumb_version = NULL,
      thumb_document_id = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    StickerSet$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    StickerSet$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    StickerSet$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
