# GetBroadcastStatsRequest

Telegram API type GetBroadcastStatsRequest

## Details

GetBroadcastStatsRequest

R6 class representing a GetBroadcastStatsRequest TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetBroadcastStatsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `dark`:

  Field.

## Methods

### Public methods

- [`GetBroadcastStatsRequest$new()`](#method-GetBroadcastStatsRequest-new)

- [`GetBroadcastStatsRequest$resolve()`](#method-GetBroadcastStatsRequest-resolve)

- [`GetBroadcastStatsRequest$to_list()`](#method-GetBroadcastStatsRequest-to_list)

- [`GetBroadcastStatsRequest$to_bytes()`](#method-GetBroadcastStatsRequest-to_bytes)

- [`GetBroadcastStatsRequest$from_reader()`](#method-GetBroadcastStatsRequest-from_reader)

- [`GetBroadcastStatsRequest$clone()`](#method-GetBroadcastStatsRequest-clone)

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

Initializes a new GetBroadcastStatsRequest.

#### Usage

    GetBroadcastStatsRequest$new(channel, dark = NULL)

#### Arguments

- `channel`:

  input channel object

- `dark`:

  logical; optional dark flag

------------------------------------------------------------------------

### Method `resolve()`

Resolve input entities (expects client and utils helpers to exist)

#### Usage

    GetBroadcastStatsRequest$resolve(client)

#### Arguments

- `client`:

  The client instance to resolve entities.

------------------------------------------------------------------------

### Method `to_list()`

Convert to a plain list (like to_dict)

#### Usage

    GetBroadcastStatsRequest$to_list()

#### Returns

A list representing the request.

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (relies on channel\$to_bytes() and helper utils
in parent)

#### Usage

    GetBroadcastStatsRequest$to_bytes()

#### Returns

A raw vector representing the serialized request.

------------------------------------------------------------------------

### Method `from_reader()`

Create instance from a reader object (reader must provide read_int,
tgread_object)

#### Usage

    GetBroadcastStatsRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object to read the serialized data.

#### Returns

A new instance of GetBroadcastStatsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetBroadcastStatsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
