# ChatFull

Telegram API type ChatFull

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChatFull`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `about`:

  Field.

- `participants`:

  Field.

- `notify_settings`:

  Field.

- `can_set_username`:

  Field.

- `has_scheduled`:

  Field.

- `translations_disabled`:

  Field.

- `chat_photo`:

  Field.

- `exported_invite`:

  Field.

- `bot_info`:

  Field.

- `pinned_msg_id`:

  Field.

- `folder_id`:

  Field.

- `call`:

  Field.

- `ttl_period`:

  Field.

- `groupcall_default_join_as`:

  Field.

- `theme_emoticon`:

  Field.

- `requests_pending`:

  Field.

- `recent_requesters`:

  Field.

- `available_reactions`:

  Field.

- `reactions_limit`:

  Field.

## Methods

### Public methods

- [`ChatFull$new()`](#method-ChatFull-new)

- [`ChatFull$to_list()`](#method-ChatFull-to_list)

- [`ChatFull$from_reader()`](#method-ChatFull-from_reader)

- [`ChatFull$clone()`](#method-ChatFull-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    ChatFull$new(
      id,
      about,
      participants,
      notify_settings,
      can_set_username = NULL,
      has_scheduled = NULL,
      translations_disabled = NULL,
      chat_photo = NULL,
      exported_invite = NULL,
      bot_info = NULL,
      pinned_msg_id = NULL,
      folder_id = NULL,
      call = NULL,
      ttl_period = NULL,
      groupcall_default_join_as = NULL,
      theme_emoticon = NULL,
      requests_pending = NULL,
      recent_requesters = NULL,
      available_reactions = NULL,
      reactions_limit = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ChatFull$to_list()

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ChatFull$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChatFull$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
