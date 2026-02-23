# InputPeerNotifySettings

Telegram API type InputPeerNotifySettings

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputPeerNotifySettings`

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

- `sound`:

  Field.

- `stories_muted`:

  Field.

- `stories_hide_sender`:

  Field.

- `stories_sound`:

  Field.

## Methods

### Public methods

- [`InputPeerNotifySettings$new()`](#method-InputPeerNotifySettings-new)

- [`InputPeerNotifySettings$to_dict()`](#method-InputPeerNotifySettings-to_dict)

- [`InputPeerNotifySettings$bytes()`](#method-InputPeerNotifySettings-bytes)

- [`InputPeerNotifySettings$clone()`](#method-InputPeerNotifySettings-clone)

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

    InputPeerNotifySettings$new(
      show_previews = NULL,
      silent = NULL,
      mute_until = NULL,
      sound = NULL,
      stories_muted = NULL,
      stories_hide_sender = NULL,
      stories_sound = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputPeerNotifySettings$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputPeerNotifySettings$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputPeerNotifySettings$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
