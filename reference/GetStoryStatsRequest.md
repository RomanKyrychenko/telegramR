# GetStoryStatsRequest

Telegram API type GetStoryStatsRequest

## Details

GetStoryStatsRequest

R6 class representing a GetStoryStatsRequest TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetStoryStatsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `id`:

  Field.

- `dark`:

  Field.

## Methods

### Public methods

- [`GetStoryStatsRequest$new()`](#method-GetStoryStatsRequest-new)

- [`GetStoryStatsRequest$resolve()`](#method-GetStoryStatsRequest-resolve)

- [`GetStoryStatsRequest$to_list()`](#method-GetStoryStatsRequest-to_list)

- [`GetStoryStatsRequest$to_bytes()`](#method-GetStoryStatsRequest-to_bytes)

- [`GetStoryStatsRequest$from_reader()`](#method-GetStoryStatsRequest-from_reader)

- [`GetStoryStatsRequest$clone()`](#method-GetStoryStatsRequest-clone)

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

Initializes a new GetStoryStatsRequest.

#### Usage

    GetStoryStatsRequest$new(peer, id, dark = NULL)

#### Arguments

- `peer`:

  input peer object

- `id`:

  integer story id

- `dark`:

  logical; optional dark flag

------------------------------------------------------------------------

### Method `resolve()`

Resolve input entities (expects client and utils helpers to exist)

#### Usage

    GetStoryStatsRequest$resolve(client)

#### Arguments

- `client`:

  The client instance to resolve entities.

------------------------------------------------------------------------

### Method `to_list()`

Convert to a plain list (like to_dict)

#### Usage

    GetStoryStatsRequest$to_list()

#### Returns

List representing the request.

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (relies on peer\$to_bytes() and helper utils in
parent)

#### Usage

    GetStoryStatsRequest$to_bytes()

#### Returns

List representing the request.

------------------------------------------------------------------------

### Method `from_reader()`

Create instance from a reader object (reader must provide read_int,
tgread_object, read_int)

#### Usage

    GetStoryStatsRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object to read the serialized data.

#### Returns

A raw vector representing the serialized request.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetStoryStatsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
