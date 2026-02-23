# DeletePhotosRequest

Telegram API type DeletePhotosRequest

## Format

A R6 object inheriting from TLRequest.

## Details

DeletePhotosRequest

R6 translation of the TLRequest DeletePhotosRequest.

## Methods

\- new(id = NULL): Create a new DeletePhotosRequest object. -
resolve(client, utils): Resolve references (convert each provided id to
input photo via utils). - to_list(): Return a list representation
suitable for JSON / introspection. - to_bytes(): Serialize the object to
a raw vector (little-endian packing). Writes vector constructor and
elements. - from_reader(reader): Class method: read fields from a reader
and construct an instance.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `DeletePhotosRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  integer

- `SUBCLASS_OF_ID`:

  integer

- `id`:

  list of TLObject or NULL

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`DeletePhotosRequest$new()`](#method-DeletePhotosRequest-new)

- [`DeletePhotosRequest$resolve()`](#method-DeletePhotosRequest-resolve)

- [`DeletePhotosRequest$to_list()`](#method-DeletePhotosRequest-to_list)

- [`DeletePhotosRequest$to_bytes()`](#method-DeletePhotosRequest-to_bytes)

- [`DeletePhotosRequest$clone()`](#method-DeletePhotosRequest-clone)

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

Initialize a new DeletePhotosRequest

#### Usage

    DeletePhotosRequest$new(id = NULL)

#### Arguments

- `id`:

  list of TLObject or identifiers for input photos

------------------------------------------------------------------------

### Method `resolve()`

Resolve references (client + utils)

Convert each provided id into an input photo using utils.

#### Usage

    DeletePhotosRequest$resolve(client, utils)

#### Arguments

- `client`:

  client (not used here, included for API symmetry)

- `utils`:

  helper with get_input_photo method

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    DeletePhotosRequest$to_list()

#### Returns

list representation of the request

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes (raw vector)

Packs constructor id, vector constructor id, length and elements in
little-endian order. Each element must implement to_bytes().

#### Usage

    DeletePhotosRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DeletePhotosRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
