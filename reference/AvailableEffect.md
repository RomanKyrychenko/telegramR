# AvailableEffect

Telegram API type AvailableEffect

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `AvailableEffect`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `emoticon`:

  Field.

- `effect_sticker_id`:

  Field.

- `premium_required`:

  Field.

- `static_icon_id`:

  Field.

- `effect_animation_id`:

  Field.

## Methods

### Public methods

- [`AvailableEffect$new()`](#method-AvailableEffect-new)

- [`AvailableEffect$to_dict()`](#method-AvailableEffect-to_dict)

- [`AvailableEffect$bytes()`](#method-AvailableEffect-bytes)

- [`AvailableEffect$clone()`](#method-AvailableEffect-clone)

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

Initializes the AvailableEffect with the given parameters.

#### Usage

    AvailableEffect$new(
      id,
      emoticon,
      effect_sticker_id,
      premium_required = NULL,
      static_icon_id = NULL,
      effect_animation_id = NULL
    )

#### Arguments

- `id`:

  An integer representing the effect ID.

- `emoticon`:

  A string representing the emoticon.

- `effect_sticker_id`:

  An integer representing the effect sticker ID.

- `premium_required`:

  Optional boolean indicating if premium is required.

- `static_icon_id`:

  Optional integer representing the static icon ID.

- `effect_animation_id`:

  Optional integer representing the effect animation ID.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the AvailableEffect object to a list (dictionary).

#### Usage

    AvailableEffect$to_dict()

#### Returns

A list representation of the AvailableEffect object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the AvailableEffect object to bytes.

#### Usage

    AvailableEffect$bytes()

#### Returns

A raw vector representing the serialized bytes of the AvailableEffect
object. Reads an AvailableEffect object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AvailableEffect$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
