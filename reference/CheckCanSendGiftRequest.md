# CheckCanSendGiftRequest

Represents a request to check if a gift can be sent. Inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `CheckCanSendGiftRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `gift_id`:

  Field.

## Methods

### Public methods

- [`CheckCanSendGiftRequest$new()`](#method-CheckCanSendGiftRequest-new)

- [`CheckCanSendGiftRequest$to_dict()`](#method-CheckCanSendGiftRequest-to_dict)

- [`CheckCanSendGiftRequest$bytes()`](#method-CheckCanSendGiftRequest-bytes)

- [`CheckCanSendGiftRequest$from_reader()`](#method-CheckCanSendGiftRequest-from_reader)

- [`CheckCanSendGiftRequest$clone()`](#method-CheckCanSendGiftRequest-clone)

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

Initialize the CheckCanSendGiftRequest object.

#### Usage

    CheckCanSendGiftRequest$new(gift_id)

#### Arguments

- `gift_id`:

  The gift ID (integer).

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    CheckCanSendGiftRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    CheckCanSendGiftRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    CheckCanSendGiftRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of CheckCanSendGiftRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CheckCanSendGiftRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
