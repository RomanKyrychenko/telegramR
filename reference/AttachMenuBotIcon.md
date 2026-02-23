# AttachMenuBotIcon

Telegram API type AttachMenuBotIcon

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `AttachMenuBotIcon`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `name`:

  Field.

- `icon`:

  Field.

- `colors`:

  Field.

## Methods

### Public methods

- [`AttachMenuBotIcon$new()`](#method-AttachMenuBotIcon-new)

- [`AttachMenuBotIcon$to_dict()`](#method-AttachMenuBotIcon-to_dict)

- [`AttachMenuBotIcon$bytes()`](#method-AttachMenuBotIcon-bytes)

- [`AttachMenuBotIcon$clone()`](#method-AttachMenuBotIcon-clone)

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

Initializes the AttachMenuBotIcon with the given parameters.

#### Usage

    AttachMenuBotIcon$new(name, icon, colors = NULL)

#### Arguments

- `name`:

  A string representing the icon name.

- `icon`:

  A TypeDocument object representing the icon.

- `colors`:

  Optional list of TypeAttachMenuBotIconColor objects.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the AttachMenuBotIcon object to a list (dictionary).

#### Usage

    AttachMenuBotIcon$to_dict()

#### Returns

A list representation of the AttachMenuBotIcon object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the AttachMenuBotIcon object to bytes.

#### Usage

    AttachMenuBotIcon$bytes()

#### Returns

A raw vector representing the serialized bytes of the AttachMenuBotIcon
object. Reads an AttachMenuBotIcon object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AttachMenuBotIcon$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
