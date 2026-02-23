# AttachMenuBotIconColor

Telegram API type AttachMenuBotIconColor

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `AttachMenuBotIconColor`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `name`:

  Field.

- `color`:

  Field.

## Methods

### Public methods

- [`AttachMenuBotIconColor$new()`](#method-AttachMenuBotIconColor-new)

- [`AttachMenuBotIconColor$to_dict()`](#method-AttachMenuBotIconColor-to_dict)

- [`AttachMenuBotIconColor$bytes()`](#method-AttachMenuBotIconColor-bytes)

- [`AttachMenuBotIconColor$clone()`](#method-AttachMenuBotIconColor-clone)

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

Initializes the AttachMenuBotIconColor with the given parameters.

#### Usage

    AttachMenuBotIconColor$new(name, color)

#### Arguments

- `name`:

  A string representing the color name.

- `color`:

  An integer representing the color value.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the AttachMenuBotIconColor object to a list (dictionary).

#### Usage

    AttachMenuBotIconColor$to_dict()

#### Returns

A list representation of the AttachMenuBotIconColor object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the AttachMenuBotIconColor object to bytes.

#### Usage

    AttachMenuBotIconColor$bytes()

#### Returns

A raw vector representing the serialized bytes of the
AttachMenuBotIconColor object. Reads an AttachMenuBotIconColor object
from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AttachMenuBotIconColor$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
