# GetMessageStatsRequest

Telegram API type GetMessageStatsRequest

## Details

GetMessageStatsRequest

R6 class representing a GetMessageStatsRequest TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetMessageStatsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `msg_id`:

  Field.

- `dark`:

  Field.

## Methods

### Public methods

- [`GetMessageStatsRequest$new()`](#method-GetMessageStatsRequest-new)

- [`GetMessageStatsRequest$resolve()`](#method-GetMessageStatsRequest-resolve)

- [`GetMessageStatsRequest$to_list()`](#method-GetMessageStatsRequest-to_list)

- [`GetMessageStatsRequest$to_bytes()`](#method-GetMessageStatsRequest-to_bytes)

- [`GetMessageStatsRequest$from_reader()`](#method-GetMessageStatsRequest-from_reader)

- [`GetMessageStatsRequest$clone()`](#method-GetMessageStatsRequest-clone)

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

Initializes a new GetMessageStatsRequest.

#### Usage

    GetMessageStatsRequest$new(channel, msg_id, dark = NULL)

#### Arguments

- `channel`:

  input channel object

- `msg_id`:

  integer message id

- `dark`:

  logical; optional dark flag

------------------------------------------------------------------------

### Method `resolve()`

Resolve input entities (expects client and utils helpers to exist)

#### Usage

    GetMessageStatsRequest$resolve(client)

#### Arguments

- `client`:

  The client instance to resolve entities.

------------------------------------------------------------------------

### Method `to_list()`

Convert to a plain list (like to_dict)

#### Usage

    GetMessageStatsRequest$to_list()

#### Returns

A list representing the request.

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (relies on channel\$to_bytes() and helper utils
in parent)

#### Usage

    GetMessageStatsRequest$to_bytes()

#### Returns

A raw vector representing the serialized request.

------------------------------------------------------------------------

### Method `from_reader()`

Create instance from a reader object (reader must provide read_int,
tgread_object, read_int)

#### Usage

    GetMessageStatsRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object to read the serialized data.

#### Returns

A raw vector representing the serialized request.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetMessageStatsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
