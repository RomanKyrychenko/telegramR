# AssignPlayMarketTransactionRequest

Telegram API type AssignPlayMarketTransactionRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `AssignPlayMarketTransactionRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `receipt`:

  Field.

- `purpose`:

  Field.

## Methods

### Public methods

- [`AssignPlayMarketTransactionRequest$new()`](#method-AssignPlayMarketTransactionRequest-new)

- [`AssignPlayMarketTransactionRequest$to_dict()`](#method-AssignPlayMarketTransactionRequest-to_dict)

- [`AssignPlayMarketTransactionRequest$bytes()`](#method-AssignPlayMarketTransactionRequest-bytes)

- [`AssignPlayMarketTransactionRequest$from_reader()`](#method-AssignPlayMarketTransactionRequest-from_reader)

- [`AssignPlayMarketTransactionRequest$clone()`](#method-AssignPlayMarketTransactionRequest-clone)

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

Initialize the AssignPlayMarketTransactionRequest object.

#### Usage

    AssignPlayMarketTransactionRequest$new(receipt, purpose)

#### Arguments

- `receipt`:

  The receipt data JSON (TypeDataJSON).

- `purpose`:

  The input store payment purpose (TypeInputStorePaymentPurpose).

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    AssignPlayMarketTransactionRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    AssignPlayMarketTransactionRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    AssignPlayMarketTransactionRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of AssignPlayMarketTransactionRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AssignPlayMarketTransactionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
