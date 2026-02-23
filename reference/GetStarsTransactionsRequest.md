# GetStarsTransactionsRequest

Telegram API type GetStarsTransactionsRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetStarsTransactionsRequest`

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

- `inbound`:

  Field.

- `outbound`:

  Field.

- `ascending`:

  Field.

- `ton`:

  Field.

- `subscription_id`:

  Field.

## Methods

### Public methods

- [`GetStarsTransactionsRequest$new()`](#method-GetStarsTransactionsRequest-new)

- [`GetStarsTransactionsRequest$resolve()`](#method-GetStarsTransactionsRequest-resolve)

- [`GetStarsTransactionsRequest$to_dict()`](#method-GetStarsTransactionsRequest-to_dict)

- [`GetStarsTransactionsRequest$bytes()`](#method-GetStarsTransactionsRequest-bytes)

- [`GetStarsTransactionsRequest$from_reader()`](#method-GetStarsTransactionsRequest-from_reader)

- [`GetStarsTransactionsRequest$clone()`](#method-GetStarsTransactionsRequest-clone)

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

Initialize the GetStarsTransactionsRequest object.

#### Usage

    GetStarsTransactionsRequest$new(
      peer,
      offset,
      limit,
      inbound = NULL,
      outbound = NULL,
      ascending = NULL,
      ton = NULL,
      subscription_id = NULL
    )

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

- `offset`:

  The offset string.

- `limit`:

  The limit integer.

- `inbound`:

  Optional boolean flag for inbound transactions.

- `outbound`:

  Optional boolean flag for outbound transactions.

- `ascending`:

  Optional boolean flag for ascending order.

- `ton`:

  Optional boolean flag for TON.

- `subscription_id`:

  Optional subscription ID (string).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    GetStarsTransactionsRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    GetStarsTransactionsRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetStarsTransactionsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    GetStarsTransactionsRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetStarsTransactionsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetStarsTransactionsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
