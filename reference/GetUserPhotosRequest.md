# GetUserPhotosRequest

Telegram API type GetUserPhotosRequest

## Format

A R6 object inheriting from TLRequest.

## Details

GetUserPhotosRequest

R6 translation of the TLRequest GetUserPhotosRequest.

## Methods

\- new(user_id = NULL, offset = 0L, max_id = 0, limit = 0L): Create a
new GetUserPhotosRequest object. - resolve(client, utils): Resolve
references (convert user identifier to input user via client + utils). -
to_list(): Return a list representation suitable for JSON /
introspection. - to_bytes(): Serialize the object to a raw vector
(little-endian packing). - from_reader(reader): Class method: read
fields from a reader and construct an instance.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetUserPhotosRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  integer

- `SUBCLASS_OF_ID`:

  integer

- `user_id`:

  TLObject or NULL

- `offset`:

  integer

- `max_id`:

  numeric (64-bit representation)

- `limit`:

  integer

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`GetUserPhotosRequest$new()`](#method-GetUserPhotosRequest-new)

- [`GetUserPhotosRequest$resolve()`](#method-GetUserPhotosRequest-resolve)

- [`GetUserPhotosRequest$to_list()`](#method-GetUserPhotosRequest-to_list)

- [`GetUserPhotosRequest$to_bytes()`](#method-GetUserPhotosRequest-to_bytes)

- [`GetUserPhotosRequest$clone()`](#method-GetUserPhotosRequest-clone)

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
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize a new GetUserPhotosRequest

#### Usage

    GetUserPhotosRequest$new(user_id = NULL, offset = 0L, max_id = 0, limit = 0L)

#### Arguments

- `user_id`:

  TLObject or identifier for input user

- `offset`:

  integer

- `max_id`:

  numeric (64-bit)

- `limit`:

  integer

------------------------------------------------------------------------

### Method `resolve()`

Resolve references (client + utils)

Convert provided user identifier into an input user using client and
utils.

#### Usage

    GetUserPhotosRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  helper with get_input_user method

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    GetUserPhotosRequest$to_list()

#### Returns

list representation of the request

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes (raw vector)

Packs constructor id and fields in little-endian order. Relies on
user_id implementing to_bytes(). max_id is written as 8 bytes (numeric).

#### Usage

    GetUserPhotosRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetUserPhotosRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
