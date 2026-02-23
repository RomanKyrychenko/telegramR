# GetPremiumGiftCodeOptionsRequest

Represents a request to get premium gift code options. Inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetPremiumGiftCodeOptionsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `boost_peer`:

  Field.

## Methods

### Public methods

- [`GetPremiumGiftCodeOptionsRequest$new()`](#method-GetPremiumGiftCodeOptionsRequest-new)

- [`GetPremiumGiftCodeOptionsRequest$resolve()`](#method-GetPremiumGiftCodeOptionsRequest-resolve)

- [`GetPremiumGiftCodeOptionsRequest$to_dict()`](#method-GetPremiumGiftCodeOptionsRequest-to_dict)

- [`GetPremiumGiftCodeOptionsRequest$bytes()`](#method-GetPremiumGiftCodeOptionsRequest-bytes)

- [`GetPremiumGiftCodeOptionsRequest$from_reader()`](#method-GetPremiumGiftCodeOptionsRequest-from_reader)

- [`GetPremiumGiftCodeOptionsRequest$clone()`](#method-GetPremiumGiftCodeOptionsRequest-clone)

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

Initialize the GetPremiumGiftCodeOptionsRequest object.

#### Usage

    GetPremiumGiftCodeOptionsRequest$new(boost_peer = NULL)

#### Arguments

- `boost_peer`:

  Optional input peer for boosting (TypeInputPeer).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the boost_peer using client and utils.

#### Usage

    GetPremiumGiftCodeOptionsRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    GetPremiumGiftCodeOptionsRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetPremiumGiftCodeOptionsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    GetPremiumGiftCodeOptionsRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetPremiumGiftCodeOptionsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetPremiumGiftCodeOptionsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
