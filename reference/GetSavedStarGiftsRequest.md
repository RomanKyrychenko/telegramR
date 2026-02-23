# GetSavedStarGiftsRequest

Telegram API type GetSavedStarGiftsRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetSavedStarGiftsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `offset`:

  Field.

- `limit`:

  Field.

- `exclude_unsaved`:

  Field.

- `exclude_saved`:

  Field.

- `exclude_unlimited`:

  Field.

- `exclude_unique`:

  Field.

- `sort_by_value`:

  Field.

- `exclude_upgradable`:

  Field.

- `exclude_unupgradable`:

  Field.

- `collection_id`:

  Field.

## Methods

### Public methods

- [`GetSavedStarGiftsRequest$new()`](#method-GetSavedStarGiftsRequest-new)

- [`GetSavedStarGiftsRequest$resolve()`](#method-GetSavedStarGiftsRequest-resolve)

- [`GetSavedStarGiftsRequest$to_dict()`](#method-GetSavedStarGiftsRequest-to_dict)

- [`GetSavedStarGiftsRequest$bytes()`](#method-GetSavedStarGiftsRequest-bytes)

- [`GetSavedStarGiftsRequest$from_reader()`](#method-GetSavedStarGiftsRequest-from_reader)

- [`GetSavedStarGiftsRequest$clone()`](#method-GetSavedStarGiftsRequest-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize the GetSavedStarGiftsRequest object.

#### Usage

    GetSavedStarGiftsRequest$new(
      peer,
      offset,
      limit,
      exclude_unsaved = NULL,
      exclude_saved = NULL,
      exclude_unlimited = NULL,
      exclude_unique = NULL,
      sort_by_value = NULL,
      exclude_upgradable = NULL,
      exclude_unupgradable = NULL,
      collection_id = NULL
    )

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

- `offset`:

  The offset string.

- `limit`:

  The limit integer.

- `exclude_unsaved`:

  Optional boolean flag to exclude unsaved gifts.

- `exclude_saved`:

  Optional boolean flag to exclude saved gifts.

- `exclude_unlimited`:

  Optional boolean flag to exclude unlimited gifts.

- `exclude_unique`:

  Optional boolean flag to exclude unique gifts.

- `sort_by_value`:

  Optional boolean flag to sort by value.

- `exclude_upgradable`:

  Optional boolean flag to exclude upgradable gifts.

- `exclude_unupgradable`:

  Optional boolean flag to exclude unupgradable gifts.

- `collection_id`:

  Optional collection ID (integer).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    GetSavedStarGiftsRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    GetSavedStarGiftsRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetSavedStarGiftsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    GetSavedStarGiftsRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetSavedStarGiftsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetSavedStarGiftsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
