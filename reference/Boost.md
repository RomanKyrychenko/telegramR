# Boost

Telegram API type Boost

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `Boost`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `date`:

  Field.

- `expires`:

  Field.

- `gift`:

  Field.

- `giveaway`:

  Field.

- `unclaimed`:

  Field.

- `user_id`:

  Field.

- `giveaway_msg_id`:

  Field.

- `used_gift_slug`:

  Field.

- `multiplier`:

  Field.

- `stars`:

  Field.

## Methods

### Public methods

- [`Boost$new()`](#method-Boost-new)

- [`Boost$to_dict()`](#method-Boost-to_dict)

- [`Boost$bytes()`](#method-Boost-bytes)

- [`Boost$clone()`](#method-Boost-clone)

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

Initializes the Boost with the given parameters.

#### Usage

    Boost$new(
      id,
      date = NULL,
      expires = NULL,
      gift = NULL,
      giveaway = NULL,
      unclaimed = NULL,
      user_id = NULL,
      giveaway_msg_id = NULL,
      used_gift_slug = NULL,
      multiplier = NULL,
      stars = NULL
    )

#### Arguments

- `id`:

  A string representing the boost ID.

- `date`:

  A datetime object representing the boost date. Optional.

- `expires`:

  A datetime object representing when the boost expires. Optional.

- `gift`:

  A logical indicating if this is a gift boost. Optional.

- `giveaway`:

  A logical indicating if this is a giveaway boost. Optional.

- `unclaimed`:

  A logical indicating if the boost is unclaimed. Optional.

- `user_id`:

  An integer representing the user ID. Optional.

- `giveaway_msg_id`:

  An integer representing the giveaway message ID. Optional.

- `used_gift_slug`:

  A string representing the used gift slug. Optional.

- `multiplier`:

  An integer representing the multiplier. Optional.

- `stars`:

  An integer representing the stars. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the Boost object to a list (dictionary).

#### Usage

    Boost$to_dict()

#### Returns

A list representation of the Boost object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the Boost object to bytes.

#### Usage

    Boost$bytes()

#### Returns

A raw vector representing the serialized bytes of the Boost object.
Reads a Boost object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Boost$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
