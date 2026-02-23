# GetSuggestedStarRefBotsRequest

Telegram API type GetSuggestedStarRefBotsRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetSuggestedStarRefBotsRequest`

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

- `order_by_revenue`:

  Field.

- `order_by_date`:

  Field.

## Methods

### Public methods

- [`GetSuggestedStarRefBotsRequest$new()`](#method-GetSuggestedStarRefBotsRequest-new)

- [`GetSuggestedStarRefBotsRequest$resolve()`](#method-GetSuggestedStarRefBotsRequest-resolve)

- [`GetSuggestedStarRefBotsRequest$to_dict()`](#method-GetSuggestedStarRefBotsRequest-to_dict)

- [`GetSuggestedStarRefBotsRequest$bytes()`](#method-GetSuggestedStarRefBotsRequest-bytes)

- [`GetSuggestedStarRefBotsRequest$from_reader()`](#method-GetSuggestedStarRefBotsRequest-from_reader)

- [`GetSuggestedStarRefBotsRequest$clone()`](#method-GetSuggestedStarRefBotsRequest-clone)

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

Initialize the GetSuggestedStarRefBotsRequest object.

#### Usage

    GetSuggestedStarRefBotsRequest$new(
      peer,
      offset,
      limit,
      order_by_revenue = NULL,
      order_by_date = NULL
    )

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

- `offset`:

  The offset string.

- `limit`:

  The limit integer.

- `order_by_revenue`:

  Optional boolean flag to order by revenue.

- `order_by_date`:

  Optional boolean flag to order by date.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    GetSuggestedStarRefBotsRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    GetSuggestedStarRefBotsRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetSuggestedStarRefBotsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    GetSuggestedStarRefBotsRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetSuggestedStarRefBotsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetSuggestedStarRefBotsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
