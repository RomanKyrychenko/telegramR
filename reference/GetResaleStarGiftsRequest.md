# GetResaleStarGiftsRequest

Telegram API type GetResaleStarGiftsRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetResaleStarGiftsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `gift_id`:

  Field.

- `offset`:

  Field.

- `limit`:

  Field.

- `sort_by_price`:

  Field.

- `sort_by_num`:

  Field.

- `attributes_hash`:

  Field.

- `attributes`:

  Field.

## Methods

### Public methods

- [`GetResaleStarGiftsRequest$new()`](#method-GetResaleStarGiftsRequest-new)

- [`GetResaleStarGiftsRequest$to_dict()`](#method-GetResaleStarGiftsRequest-to_dict)

- [`GetResaleStarGiftsRequest$bytes()`](#method-GetResaleStarGiftsRequest-bytes)

- [`GetResaleStarGiftsRequest$from_reader()`](#method-GetResaleStarGiftsRequest-from_reader)

- [`GetResaleStarGiftsRequest$clone()`](#method-GetResaleStarGiftsRequest-clone)

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
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize the GetResaleStarGiftsRequest object.

#### Usage

    GetResaleStarGiftsRequest$new(
      gift_id,
      offset,
      limit,
      sort_by_price = NULL,
      sort_by_num = NULL,
      attributes_hash = NULL,
      attributes = NULL
    )

#### Arguments

- `gift_id`:

  The gift ID (integer).

- `offset`:

  The offset string.

- `limit`:

  The limit integer.

- `sort_by_price`:

  Optional boolean flag to sort by price.

- `sort_by_num`:

  Optional boolean flag to sort by number.

- `attributes_hash`:

  Optional attributes hash (integer).

- `attributes`:

  Optional list of star gift attribute IDs (list of
  TypeStarGiftAttributeId).

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    GetResaleStarGiftsRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetResaleStarGiftsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    GetResaleStarGiftsRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetResaleStarGiftsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetResaleStarGiftsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
