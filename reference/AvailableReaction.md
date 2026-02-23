# AvailableReaction

Telegram API type AvailableReaction

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `AvailableReaction`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `reaction`:

  Field.

- `title`:

  Field.

- `static_icon`:

  Field.

- `appear_animation`:

  Field.

- `select_animation`:

  Field.

- `activate_animation`:

  Field.

- `effect_animation`:

  Field.

- `inactive`:

  Field.

- `premium`:

  Field.

- `around_animation`:

  Field.

- `center_icon`:

  Field.

## Methods

### Public methods

- [`AvailableReaction$new()`](#method-AvailableReaction-new)

- [`AvailableReaction$to_dict()`](#method-AvailableReaction-to_dict)

- [`AvailableReaction$bytes()`](#method-AvailableReaction-bytes)

- [`AvailableReaction$clone()`](#method-AvailableReaction-clone)

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

Initializes the AvailableReaction with the given parameters.

#### Usage

    AvailableReaction$new(
      reaction,
      title,
      static_icon,
      appear_animation,
      select_animation,
      activate_animation,
      effect_animation,
      inactive = NULL,
      premium = NULL,
      around_animation = NULL,
      center_icon = NULL
    )

#### Arguments

- `reaction`:

  A string representing the reaction.

- `title`:

  A string representing the title.

- `static_icon`:

  A TLObject representing the static icon.

- `appear_animation`:

  A TLObject representing the appear animation.

- `select_animation`:

  A TLObject representing the select animation.

- `activate_animation`:

  A TLObject representing the activate animation.

- `effect_animation`:

  A TLObject representing the effect animation.

- `inactive`:

  A logical indicating if inactive. Optional.

- `premium`:

  A logical indicating if premium. Optional.

- `around_animation`:

  A TLObject representing the around animation. Optional.

- `center_icon`:

  A TLObject representing the center icon. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the AvailableReaction object to a list (dictionary).

#### Usage

    AvailableReaction$to_dict()

#### Returns

A list representation of the AvailableReaction object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the AvailableReaction object to bytes.

#### Usage

    AvailableReaction$bytes()

#### Returns

A raw vector representing the serialized bytes of the AvailableReaction
object. Reads an AvailableReaction object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AvailableReaction$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
