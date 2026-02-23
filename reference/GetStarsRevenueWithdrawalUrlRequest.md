# GetStarsRevenueWithdrawalUrlRequest

Telegram API type GetStarsRevenueWithdrawalUrlRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetStarsRevenueWithdrawalUrlRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `password`:

  Field.

- `ton`:

  Field.

- `amount`:

  Field.

## Methods

### Public methods

- [`GetStarsRevenueWithdrawalUrlRequest$new()`](#method-GetStarsRevenueWithdrawalUrlRequest-new)

- [`GetStarsRevenueWithdrawalUrlRequest$resolve()`](#method-GetStarsRevenueWithdrawalUrlRequest-resolve)

- [`GetStarsRevenueWithdrawalUrlRequest$to_dict()`](#method-GetStarsRevenueWithdrawalUrlRequest-to_dict)

- [`GetStarsRevenueWithdrawalUrlRequest$bytes()`](#method-GetStarsRevenueWithdrawalUrlRequest-bytes)

- [`GetStarsRevenueWithdrawalUrlRequest$from_reader()`](#method-GetStarsRevenueWithdrawalUrlRequest-from_reader)

- [`GetStarsRevenueWithdrawalUrlRequest$clone()`](#method-GetStarsRevenueWithdrawalUrlRequest-clone)

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

Initialize the GetStarsRevenueWithdrawalUrlRequest object.

#### Usage

    GetStarsRevenueWithdrawalUrlRequest$new(
      peer,
      password,
      ton = NULL,
      amount = NULL
    )

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

- `password`:

  The input check password SRP (TypeInputCheckPasswordSRP).

- `ton`:

  Optional boolean flag for TON.

- `amount`:

  Optional amount (integer).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    GetStarsRevenueWithdrawalUrlRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    GetStarsRevenueWithdrawalUrlRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetStarsRevenueWithdrawalUrlRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    GetStarsRevenueWithdrawalUrlRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetStarsRevenueWithdrawalUrlRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetStarsRevenueWithdrawalUrlRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
