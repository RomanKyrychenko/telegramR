# BotApp

Telegram API type BotApp

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotApp`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `access_hash`:

  Field.

- `short_name`:

  Field.

- `title`:

  Field.

- `description`:

  Field.

- `photo`:

  Field.

- `hash`:

  Field.

- `document`:

  Field.

## Methods

### Public methods

- [`BotApp$new()`](#method-BotApp-new)

- [`BotApp$to_dict()`](#method-BotApp-to_dict)

- [`BotApp$bytes()`](#method-BotApp-bytes)

- [`BotApp$clone()`](#method-BotApp-clone)

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

Initializes the BotApp with the given parameters.

#### Usage

    BotApp$new(
      id,
      access_hash,
      short_name,
      title,
      description,
      photo,
      hash,
      document = NULL
    )

#### Arguments

- `id`:

  An integer representing the bot app ID.

- `access_hash`:

  An integer representing the access hash.

- `short_name`:

  A string representing the short name.

- `title`:

  A string representing the title.

- `description`:

  A string representing the description.

- `photo`:

  A TLObject representing the photo.

- `hash`:

  An integer representing the hash.

- `document`:

  A TLObject representing the document. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotApp object to a list (dictionary).

#### Usage

    BotApp$to_dict()

#### Returns

A list representation of the BotApp object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotApp object to bytes.

#### Usage

    BotApp$bytes()

#### Returns

A raw vector representing the serialized bytes of the BotApp object.
Reads a BotApp object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotApp$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
