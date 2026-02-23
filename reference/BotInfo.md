# BotInfo

Telegram API type BotInfo

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotInfo`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `has_preview_medias`:

  Field.

- `user_id`:

  Field.

- `description`:

  Field.

- `description_photo`:

  Field.

- `description_document`:

  Field.

- `commands`:

  Field.

- `menu_button`:

  Field.

- `privacy_policy_url`:

  Field.

- `app_settings`:

  Field.

- `verifier_settings`:

  Field.

## Methods

### Public methods

- [`BotInfo$new()`](#method-BotInfo-new)

- [`BotInfo$to_dict()`](#method-BotInfo-to_dict)

- [`BotInfo$bytes()`](#method-BotInfo-bytes)

- [`BotInfo$clone()`](#method-BotInfo-clone)

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

Initializes the BotInfo with the given parameters.

#### Usage

    BotInfo$new(
      has_preview_medias = NULL,
      user_id = NULL,
      description = NULL,
      description_photo = NULL,
      description_document = NULL,
      commands = NULL,
      menu_button = NULL,
      privacy_policy_url = NULL,
      app_settings = NULL,
      verifier_settings = NULL
    )

#### Arguments

- `has_preview_medias`:

  A boolean indicating if has preview medias. Optional.

- `user_id`:

  An integer representing the user ID. Optional.

- `description`:

  A string representing the description. Optional.

- `description_photo`:

  A TLObject representing the description photo. Optional.

- `description_document`:

  A TLObject representing the description document. Optional.

- `commands`:

  A list of TLObjects representing commands. Optional.

- `menu_button`:

  A TLObject representing the menu button. Optional.

- `privacy_policy_url`:

  A string representing the privacy policy URL. Optional.

- `app_settings`:

  A TLObject representing the app settings. Optional.

- `verifier_settings`:

  A TLObject representing the verifier settings. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotInfo object to a list (dictionary).

#### Usage

    BotInfo$to_dict()

#### Returns

A list representation of the BotInfo object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotInfo object to bytes.

#### Usage

    BotInfo$bytes()

#### Returns

A raw vector representing the serialized bytes of the BotInfo object.
Reads a BotInfo object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotInfo$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
