# GetCollectibleInfoRequest

Telegram API type GetCollectibleInfoRequest

## Value

R6 object of class GetCollectibleInfoRequest

## Details

GetCollectibleInfoRequest R6 class

Request to retrieve collectible information (fragment.CollectibleInfo).

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetCollectibleInfoRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `collectible`:

  Field.

## Methods

### Public methods

- [`GetCollectibleInfoRequest$new()`](#method-GetCollectibleInfoRequest-new)

- [`GetCollectibleInfoRequest$to_list()`](#method-GetCollectibleInfoRequest-to_list)

- [`GetCollectibleInfoRequest$to_bytes()`](#method-GetCollectibleInfoRequest-to_bytes)

- [`GetCollectibleInfoRequest$clone()`](#method-GetCollectibleInfoRequest-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initializes a new GetCollectibleInfoRequest.

#### Usage

    GetCollectibleInfoRequest$new(collectible)

#### Arguments

- `collectible`:

  TLObject-like R6 object (must provide to_list/to_bytes or

------------------------------------------------------------------------

### Method `to_list()`

convert to a list representation (analogous to to_dict)

#### Usage

    GetCollectibleInfoRequest$to_list()

#### Returns

A raw vector representing the serialized request.

------------------------------------------------------------------------

### Method `to_bytes()`

raw bytes for the request (constructor id + collectible bytes)

#### Usage

    GetCollectibleInfoRequest$to_bytes()

#### Returns

A raw vector representing the serialized request.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetCollectibleInfoRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
