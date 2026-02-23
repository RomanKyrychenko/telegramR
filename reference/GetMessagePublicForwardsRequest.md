# GetMessagePublicForwardsRequest

Telegram API type GetMessagePublicForwardsRequest

## Details

GetMessagePublicForwardsRequest

R6 class representing a GetMessagePublicForwardsRequest TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetMessagePublicForwardsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `msg_id`:

  Field.

- `offset`:

  Field.

- `limit`:

  Field.

## Methods

### Public methods

- [`GetMessagePublicForwardsRequest$new()`](#method-GetMessagePublicForwardsRequest-new)

- [`GetMessagePublicForwardsRequest$resolve()`](#method-GetMessagePublicForwardsRequest-resolve)

- [`GetMessagePublicForwardsRequest$to_list()`](#method-GetMessagePublicForwardsRequest-to_list)

- [`GetMessagePublicForwardsRequest$to_bytes()`](#method-GetMessagePublicForwardsRequest-to_bytes)

- [`GetMessagePublicForwardsRequest$from_reader()`](#method-GetMessagePublicForwardsRequest-from_reader)

- [`GetMessagePublicForwardsRequest$clone()`](#method-GetMessagePublicForwardsRequest-clone)

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

------------------------------------------------------------------------

### Method `new()`

Initializes a new GetMessagePublicForwardsRequest.

#### Usage

    GetMessagePublicForwardsRequest$new(channel, msg_id, offset, limit)

#### Arguments

- `channel`:

  input channel object

- `msg_id`:

  integer message id

- `offset`:

  character offset string

- `limit`:

  integer limit

------------------------------------------------------------------------

### Method `resolve()`

Resolve input entities (expects client and utils helpers to exist)

#### Usage

    GetMessagePublicForwardsRequest$resolve(client)

#### Arguments

- `client`:

  The client instance to resolve entities.

------------------------------------------------------------------------

### Method `to_list()`

Convert to a plain list (like to_dict)

#### Usage

    GetMessagePublicForwardsRequest$to_list()

#### Returns

A list representing the request.

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (relies on channel\$to_bytes() and helper utils
in parent)

#### Usage

    GetMessagePublicForwardsRequest$to_bytes()

#### Returns

A raw vector representing the serialized request.

------------------------------------------------------------------------

### Method `from_reader()`

Create instance from a reader object (reader must provide tgread_object,
read_int, tgread_string)

#### Usage

    GetMessagePublicForwardsRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object to read the serialized data.

#### Returns

A new instance of GetMessagePublicForwardsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetMessagePublicForwardsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
