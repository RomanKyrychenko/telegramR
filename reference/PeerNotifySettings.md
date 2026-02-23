# PeerNotifySettings

Telegram API type PeerNotifySettings

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PeerNotifySettings`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `show_previews`:

  Field.

- `silent`:

  Field.

- `mute_until`:

  Field.

- `ios_sound`:

  Field.

- `android_sound`:

  Field.

- `other_sound`:

  Field.

- `stories_muted`:

  Field.

- `stories_hide_sender`:

  Field.

- `stories_ios_sound`:

  Field.

- `stories_android_sound`:

  Field.

- `stories_other_sound`:

  Field.

## Methods

### Public methods

- [`PeerNotifySettings$new()`](#method-PeerNotifySettings-new)

- [`PeerNotifySettings$to_dict()`](#method-PeerNotifySettings-to_dict)

- [`PeerNotifySettings$bytes()`](#method-PeerNotifySettings-bytes)

- [`PeerNotifySettings$clone()`](#method-PeerNotifySettings-clone)

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

    PeerNotifySettings$new(
      show_previews = NULL,
      silent = NULL,
      mute_until = NULL,
      ios_sound = NULL,
      android_sound = NULL,
      other_sound = NULL,
      stories_muted = NULL,
      stories_hide_sender = NULL,
      stories_ios_sound = NULL,
      stories_android_sound = NULL,
      stories_other_sound = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PeerNotifySettings$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PeerNotifySettings$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PeerNotifySettings$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
