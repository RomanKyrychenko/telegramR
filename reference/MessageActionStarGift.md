# MessageActionStarGift

Telegram API type MessageActionStarGift

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageActionStarGift`

## Public fields

- `gift`:

  Field.

- `name_hidden`:

  Field.

- `saved`:

  Field.

- `converted`:

  Field.

- `upgraded`:

  Field.

- `refunded`:

  Field.

- `can_upgrade`:

  Field.

- `prepaid_upgrade`:

  Field.

- `upgrade_separate`:

  Field.

- `message`:

  Field.

- `convert_stars`:

  Field.

- `upgrade_msg_id`:

  Field.

- `upgrade_stars`:

  Field.

- `from_id`:

  Field.

- `peer`:

  Field.

- `saved_id`:

  Field.

- `prepaid_upgrade_hash`:

  Field.

- `gift_msg_id`:

  Field.

## Methods

### Public methods

- [`MessageActionStarGift$new()`](#method-MessageActionStarGift-new)

- [`MessageActionStarGift$to_dict()`](#method-MessageActionStarGift-to_dict)

- [`MessageActionStarGift$bytes()`](#method-MessageActionStarGift-bytes)

- [`MessageActionStarGift$clone()`](#method-MessageActionStarGift-clone)

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

    MessageActionStarGift$new(
      gift,
      name_hidden = NULL,
      saved = NULL,
      converted = NULL,
      upgraded = NULL,
      refunded = NULL,
      can_upgrade = NULL,
      prepaid_upgrade = NULL,
      upgrade_separate = NULL,
      message = NULL,
      convert_stars = NULL,
      upgrade_msg_id = NULL,
      upgrade_stars = NULL,
      from_id = NULL,
      peer = NULL,
      saved_id = NULL,
      prepaid_upgrade_hash = NULL,
      gift_msg_id = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageActionStarGift$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageActionStarGift$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageActionStarGift$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
