# ChatBannedRights

Telegram API type ChatBannedRights

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChatBannedRights`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `until_date`:

  Field.

- `view_messages`:

  Field.

- `send_messages`:

  Field.

- `send_media`:

  Field.

- `send_stickers`:

  Field.

- `send_gifs`:

  Field.

- `send_games`:

  Field.

- `send_inline`:

  Field.

- `embed_links`:

  Field.

- `send_polls`:

  Field.

- `change_info`:

  Field.

- `invite_users`:

  Field.

- `pin_messages`:

  Field.

- `manage_topics`:

  Field.

- `send_photos`:

  Field.

- `send_videos`:

  Field.

- `send_roundvideos`:

  Field.

- `send_audios`:

  Field.

- `send_voices`:

  Field.

- `send_docs`:

  Field.

- `send_plain`:

  Field.

## Methods

### Public methods

- [`ChatBannedRights$new()`](#method-ChatBannedRights-new)

- [`ChatBannedRights$to_list()`](#method-ChatBannedRights-to_list)

- [`ChatBannedRights$bytes()`](#method-ChatBannedRights-bytes)

- [`ChatBannedRights$clone()`](#method-ChatBannedRights-clone)

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

    ChatBannedRights$new(
      until_date,
      view_messages = NULL,
      send_messages = NULL,
      send_media = NULL,
      send_stickers = NULL,
      send_gifs = NULL,
      send_games = NULL,
      send_inline = NULL,
      embed_links = NULL,
      send_polls = NULL,
      change_info = NULL,
      invite_users = NULL,
      pin_messages = NULL,
      manage_topics = NULL,
      send_photos = NULL,
      send_videos = NULL,
      send_roundvideos = NULL,
      send_audios = NULL,
      send_voices = NULL,
      send_docs = NULL,
      send_plain = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ChatBannedRights$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ChatBannedRights$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChatBannedRights$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
