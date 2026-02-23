# EmojiStatusCollectible

Telegram API type EmojiStatusCollectible

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `EmojiStatusCollectible`

## Public fields

- `collectible_id`:

  Field.

- `document_id`:

  Field.

- `title`:

  Field.

- `slug`:

  Field.

- `pattern_document_id`:

  Field.

- `center_color`:

  Field.

- `edge_color`:

  Field.

- `pattern_color`:

  Field.

- `text_color`:

  Field.

- `until`:

  Field.

## Methods

### Public methods

- [`EmojiStatusCollectible$new()`](#method-EmojiStatusCollectible-new)

- [`EmojiStatusCollectible$to_list()`](#method-EmojiStatusCollectible-to_list)

- [`EmojiStatusCollectible$bytes()`](#method-EmojiStatusCollectible-bytes)

- [`EmojiStatusCollectible$clone()`](#method-EmojiStatusCollectible-clone)

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

    EmojiStatusCollectible$new(
      collectible_id,
      document_id,
      title,
      slug,
      pattern_document_id,
      center_color,
      edge_color,
      pattern_color,
      text_color,
      until = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    EmojiStatusCollectible$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    EmojiStatusCollectible$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EmojiStatusCollectible$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
