# GetStarsTransactionsByIDRequest

Telegram API type GetStarsTransactionsByIDRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetStarsTransactionsByIDRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `id`:

  Field.

- `ton`:

  Field.

## Methods

### Public methods

- [`GetStarsTransactionsByIDRequest$new()`](#method-GetStarsTransactionsByIDRequest-new)

- [`GetStarsTransactionsByIDRequest$resolve()`](#method-GetStarsTransactionsByIDRequest-resolve)

- [`GetStarsTransactionsByIDRequest$to_dict()`](#method-GetStarsTransactionsByIDRequest-to_dict)

- [`GetStarsTransactionsByIDRequest$bytes()`](#method-GetStarsTransactionsByIDRequest-bytes)

- [`GetStarsTransactionsByIDRequest$from_reader()`](#method-GetStarsTransactionsByIDRequest-from_reader)

- [`GetStarsTransactionsByIDRequest$clone()`](#method-GetStarsTransactionsByIDRequest-clone)

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

Initialize the GetStarsTransactionsByIDRequest object.

#### Usage

    GetStarsTransactionsByIDRequest$new(peer, id, ton = NULL)

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

- `id`:

  List of input stars transactions (list of TypeInputStarsTransaction).

- `ton`:

  Optional boolean flag for TON.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    GetStarsTransactionsByIDRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    GetStarsTransactionsByIDRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetStarsTransactionsByIDRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    GetStarsTransactionsByIDRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetStarsTransactionsByIDRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetStarsTransactionsByIDRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
