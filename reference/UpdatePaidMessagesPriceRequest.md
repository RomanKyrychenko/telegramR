# UpdatePaidMessagesPriceRequest

Represents a request to update the paid messages price for a channel.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdatePaidMessagesPriceRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `send_paid_messages_stars`:

  Field.

- `broadcast_messages_allowed`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`UpdatePaidMessagesPriceRequest$new()`](#method-UpdatePaidMessagesPriceRequest-new)

- [`UpdatePaidMessagesPriceRequest$resolve()`](#method-UpdatePaidMessagesPriceRequest-resolve)

- [`UpdatePaidMessagesPriceRequest$to_dict()`](#method-UpdatePaidMessagesPriceRequest-to_dict)

- [`UpdatePaidMessagesPriceRequest$bytes()`](#method-UpdatePaidMessagesPriceRequest-bytes)

- [`UpdatePaidMessagesPriceRequest$clone()`](#method-UpdatePaidMessagesPriceRequest-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$from_reader()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-from_reader)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize the UpdatePaidMessagesPriceRequest.

#### Usage

    UpdatePaidMessagesPriceRequest$new(
      channel,
      send_paid_messages_stars,
      broadcast_messages_allowed = NULL
    )

#### Arguments

- `channel`:

  The input channel.

- `send_paid_messages_stars`:

  The number of stars for paid messages.

- `broadcast_messages_allowed`:

  Whether broadcast messages are allowed.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the channel entity.

#### Usage

    UpdatePaidMessagesPriceRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utilities object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    UpdatePaidMessagesPriceRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    UpdatePaidMessagesPriceRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdatePaidMessagesPriceRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
