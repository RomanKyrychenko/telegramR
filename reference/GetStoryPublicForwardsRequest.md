# GetStoryPublicForwardsRequest

Telegram API type GetStoryPublicForwardsRequest

## Details

GetStoryPublicForwardsRequest

R6 class representing a GetStoryPublicForwardsRequest TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetStoryPublicForwardsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `id`:

  Field.

- `offset`:

  Field.

- `limit`:

  Field.

## Methods

### Public methods

- [`GetStoryPublicForwardsRequest$new()`](#method-GetStoryPublicForwardsRequest-new)

- [`GetStoryPublicForwardsRequest$resolve()`](#method-GetStoryPublicForwardsRequest-resolve)

- [`GetStoryPublicForwardsRequest$to_list()`](#method-GetStoryPublicForwardsRequest-to_list)

- [`GetStoryPublicForwardsRequest$to_bytes()`](#method-GetStoryPublicForwardsRequest-to_bytes)

- [`GetStoryPublicForwardsRequest$from_reader()`](#method-GetStoryPublicForwardsRequest-from_reader)

- [`GetStoryPublicForwardsRequest$clone()`](#method-GetStoryPublicForwardsRequest-clone)

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

Initializes a new GetStoryPublicForwardsRequest.

#### Usage

    GetStoryPublicForwardsRequest$new(peer, id, offset, limit)

#### Arguments

- `peer`:

  input peer object

- `id`:

  integer story id

- `offset`:

  character offset string

- `limit`:

  integer limit

------------------------------------------------------------------------

### Method `resolve()`

Resolve input entities (expects client and utils helpers to exist)

#### Usage

    GetStoryPublicForwardsRequest$resolve(client)

#### Arguments

- `client`:

  The client instance to resolve entities.

------------------------------------------------------------------------

### Method `to_list()`

Convert to a plain list (like to_dict)

#### Usage

    GetStoryPublicForwardsRequest$to_list()

#### Returns

List representing the request.

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (relies on peer\$to_bytes() and helper utils in
parent)

#### Usage

    GetStoryPublicForwardsRequest$to_bytes()

#### Returns

A raw vector representing the serialized request.

------------------------------------------------------------------------

### Method `from_reader()`

Create instance from a reader object (reader must provide tgread_object,
read_int, tgread_string)

#### Usage

    GetStoryPublicForwardsRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object to read the serialized data.

#### Returns

A new instance of GetStoryPublicForwardsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetStoryPublicForwardsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
