# UpdateStarGiftPriceRequest

Telegram API type UpdateStarGiftPriceRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdateStarGiftPriceRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `stargift`:

  Field.

- `resell_amount`:

  Field.

## Methods

### Public methods

- [`UpdateStarGiftPriceRequest$new()`](#method-UpdateStarGiftPriceRequest-new)

- [`UpdateStarGiftPriceRequest$to_dict()`](#method-UpdateStarGiftPriceRequest-to_dict)

- [`UpdateStarGiftPriceRequest$bytes()`](#method-UpdateStarGiftPriceRequest-bytes)

- [`UpdateStarGiftPriceRequest$from_reader()`](#method-UpdateStarGiftPriceRequest-from_reader)

- [`UpdateStarGiftPriceRequest$clone()`](#method-UpdateStarGiftPriceRequest-clone)

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

Initialize the UpdateStarGiftPriceRequest object.

#### Usage

    UpdateStarGiftPriceRequest$new(stargift, resell_amount)

#### Arguments

- `stargift`:

  The input saved star gift (TypeInputSavedStarGift).

- `resell_amount`:

  The resell amount (TypeStarsAmount).

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    UpdateStarGiftPriceRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    UpdateStarGiftPriceRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    UpdateStarGiftPriceRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of UpdateStarGiftPriceRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateStarGiftPriceRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
