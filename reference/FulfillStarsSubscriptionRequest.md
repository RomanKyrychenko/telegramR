# FulfillStarsSubscriptionRequest

Telegram API type FulfillStarsSubscriptionRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `FulfillStarsSubscriptionRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `subscription_id`:

  Field.

## Methods

### Public methods

- [`FulfillStarsSubscriptionRequest$new()`](#method-FulfillStarsSubscriptionRequest-new)

- [`FulfillStarsSubscriptionRequest$resolve()`](#method-FulfillStarsSubscriptionRequest-resolve)

- [`FulfillStarsSubscriptionRequest$to_dict()`](#method-FulfillStarsSubscriptionRequest-to_dict)

- [`FulfillStarsSubscriptionRequest$bytes()`](#method-FulfillStarsSubscriptionRequest-bytes)

- [`FulfillStarsSubscriptionRequest$from_reader()`](#method-FulfillStarsSubscriptionRequest-from_reader)

- [`FulfillStarsSubscriptionRequest$clone()`](#method-FulfillStarsSubscriptionRequest-clone)

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

Initialize the FulfillStarsSubscriptionRequest object.

#### Usage

    FulfillStarsSubscriptionRequest$new(peer, subscription_id)

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

- `subscription_id`:

  The subscription ID (string).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    FulfillStarsSubscriptionRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    FulfillStarsSubscriptionRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    FulfillStarsSubscriptionRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    FulfillStarsSubscriptionRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of FulfillStarsSubscriptionRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    FulfillStarsSubscriptionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
