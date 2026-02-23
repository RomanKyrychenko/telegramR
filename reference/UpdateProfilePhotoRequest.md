# UpdateProfilePhotoRequest

Telegram API type UpdateProfilePhotoRequest

## Format

A R6 object inheriting from TLRequest.

## Details

UpdateProfilePhotoRequest

R6 translation of the TLRequest UpdateProfilePhotoRequest.

## Methods

\- new(id = NULL, fallback = NULL, bot = NULL): Create a new
UpdateProfilePhotoRequest object. - resolve(client, utils): Resolve
references (convert provided id to input photo and bot to input user). -
to_list(): Return a list representation suitable for JSON /
introspection. - to_bytes(): Serialize the object to a raw vector
(little-endian packing). - from_reader(reader): Class method: read
fields from a reader and construct an instance.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdateProfilePhotoRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  integer

- `SUBCLASS_OF_ID`:

  integer

- `id`:

  TLObject or NULL

- `fallback`:

  logical or NULL

- `bot`:

  TLObject or NULL

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`UpdateProfilePhotoRequest$new()`](#method-UpdateProfilePhotoRequest-new)

- [`UpdateProfilePhotoRequest$resolve()`](#method-UpdateProfilePhotoRequest-resolve)

- [`UpdateProfilePhotoRequest$to_list()`](#method-UpdateProfilePhotoRequest-to_list)

- [`UpdateProfilePhotoRequest$to_bytes()`](#method-UpdateProfilePhotoRequest-to_bytes)

- [`UpdateProfilePhotoRequest$clone()`](#method-UpdateProfilePhotoRequest-clone)

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

Initialize a new UpdateProfilePhotoRequest

#### Usage

    UpdateProfilePhotoRequest$new(id = NULL, fallback = NULL, bot = NULL)

#### Arguments

- `id`:

  TLObject or identifier for input photo

- `fallback`:

  logical or NULL

- `bot`:

  TLObject or identifier for input user or NULL

------------------------------------------------------------------------

### Method `resolve()`

Resolve references (client + utils)

Convert provided id into an input photo and bot into an input user using
client and utils.

#### Usage

    UpdateProfilePhotoRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  helper with get_input_photo and get_input_user methods

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    UpdateProfilePhotoRequest$to_list()

#### Returns

list representation of the request

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes (raw vector)

Packs constructor id, flags and present fields in little-endian order.
Relies on contained TLObject instances implementing to_bytes().

#### Usage

    UpdateProfilePhotoRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateProfilePhotoRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
