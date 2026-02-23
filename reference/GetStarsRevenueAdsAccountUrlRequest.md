# GetStarsRevenueAdsAccountUrlRequest

Represents a request to get stars revenue ads account URL. Inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetStarsRevenueAdsAccountUrlRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

## Methods

### Public methods

- [`GetStarsRevenueAdsAccountUrlRequest$new()`](#method-GetStarsRevenueAdsAccountUrlRequest-new)

- [`GetStarsRevenueAdsAccountUrlRequest$resolve()`](#method-GetStarsRevenueAdsAccountUrlRequest-resolve)

- [`GetStarsRevenueAdsAccountUrlRequest$to_dict()`](#method-GetStarsRevenueAdsAccountUrlRequest-to_dict)

- [`GetStarsRevenueAdsAccountUrlRequest$bytes()`](#method-GetStarsRevenueAdsAccountUrlRequest-bytes)

- [`GetStarsRevenueAdsAccountUrlRequest$from_reader()`](#method-GetStarsRevenueAdsAccountUrlRequest-from_reader)

- [`GetStarsRevenueAdsAccountUrlRequest$clone()`](#method-GetStarsRevenueAdsAccountUrlRequest-clone)

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

Initialize the GetStarsRevenueAdsAccountUrlRequest object.

#### Usage

    GetStarsRevenueAdsAccountUrlRequest$new(peer)

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    GetStarsRevenueAdsAccountUrlRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    GetStarsRevenueAdsAccountUrlRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetStarsRevenueAdsAccountUrlRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    GetStarsRevenueAdsAccountUrlRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetStarsRevenueAdsAccountUrlRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetStarsRevenueAdsAccountUrlRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
