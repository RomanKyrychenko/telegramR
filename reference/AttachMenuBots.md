# AttachMenuBots

Telegram API type AttachMenuBots

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `AttachMenuBots`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `hash`:

  Field.

- `bots`:

  Field.

- `users`:

  Field.

## Methods

### Public methods

- [`AttachMenuBots$new()`](#method-AttachMenuBots-new)

- [`AttachMenuBots$to_dict()`](#method-AttachMenuBots-to_dict)

- [`AttachMenuBots$bytes()`](#method-AttachMenuBots-bytes)

- [`AttachMenuBots$clone()`](#method-AttachMenuBots-clone)

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

Initializes the AttachMenuBots with the given parameters.

#### Usage

    AttachMenuBots$new(hash, bots, users)

#### Arguments

- `hash`:

  An integer representing the hash value.

- `bots`:

  A list of TypeAttachMenuBot objects.

- `users`:

  A list of TypeUser objects.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the AttachMenuBots object to a list (dictionary).

#### Usage

    AttachMenuBots$to_dict()

#### Returns

A list representation of the AttachMenuBots object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the AttachMenuBots object to bytes.

#### Usage

    AttachMenuBots$bytes()

#### Returns

A raw vector representing the serialized bytes of the AttachMenuBots
object. Reads an AttachMenuBots object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AttachMenuBots$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
