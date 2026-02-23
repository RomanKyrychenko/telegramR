# SavedStarGift

Telegram API type SavedStarGift

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `SavedStarGift`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `date`:

  Field.

- `gift`:

  Field.

- `name_hidden`:

  Field.

- `unsaved`:

  Field.

- `refunded`:

  Field.

- `can_upgrade`:

  Field.

- `pinned_to_top`:

  Field.

- `upgrade_separate`:

  Field.

- `from_id`:

  Field.

- `message`:

  Field.

- `msg_id`:

  Field.

- `saved_id`:

  Field.

- `convert_stars`:

  Field.

- `upgrade_stars`:

  Field.

- `can_export_at`:

  Field.

- `transfer_stars`:

  Field.

- `can_transfer_at`:

  Field.

- `can_resell_at`:

  Field.

- `collection_id`:

  Field.

- `prepaid_upgrade_hash`:

  Field.

## Methods

### Public methods

- [`SavedStarGift$new()`](#method-SavedStarGift-new)

- [`SavedStarGift$to_dict()`](#method-SavedStarGift-to_dict)

- [`SavedStarGift$bytes()`](#method-SavedStarGift-bytes)

- [`SavedStarGift$clone()`](#method-SavedStarGift-clone)

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

    SavedStarGift$new(
      date = NULL,
      gift = NULL,
      name_hidden = NULL,
      unsaved = NULL,
      refunded = NULL,
      can_upgrade = NULL,
      pinned_to_top = NULL,
      upgrade_separate = NULL,
      from_id = NULL,
      message = NULL,
      msg_id = NULL,
      saved_id = NULL,
      convert_stars = NULL,
      upgrade_stars = NULL,
      can_export_at = NULL,
      transfer_stars = NULL,
      can_transfer_at = NULL,
      can_resell_at = NULL,
      collection_id = NULL,
      prepaid_upgrade_hash = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    SavedStarGift$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    SavedStarGift$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SavedStarGift$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
