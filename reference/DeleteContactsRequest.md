# DeleteContactsRequest

Methods: - initialize(id): create new request where id is a list of
input_user objects - resolve(client, utils): resolve each id element
into an input_user via client and utils - to_list(): return list
representation - to_bytes(): serialize to raw TL bytes (constructor +
vector + item bytes)

## Details

R6 representation of the TL request: DeleteContactsRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `DeleteContactsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

## Methods

### Public methods

- [`DeleteContactsRequest$new()`](#method-DeleteContactsRequest-new)

- [`DeleteContactsRequest$resolve()`](#method-DeleteContactsRequest-resolve)

- [`DeleteContactsRequest$to_list()`](#method-DeleteContactsRequest-to_list)

- [`DeleteContactsRequest$to_bytes()`](#method-DeleteContactsRequest-to_bytes)

- [`DeleteContactsRequest$clone()`](#method-DeleteContactsRequest-clone)

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

Initialize DeleteContactsRequest

#### Usage

    DeleteContactsRequest$new(id)

#### Arguments

- `id`:

  list of input_user objects or raw representations Resolve entities
  using client and utils

  Replaces each element of id with
  utils\$get_input_user(client\$get_input_entity(element))

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    DeleteContactsRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object with method get_input_entity()

- `utils`:

  utils object with method get_input_user() Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    DeleteContactsRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

Packs constructor id, TL vector constructor, count and serialized items.
Each item must provide to_bytes() or be a raw vector.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    DeleteContactsRequest$to_bytes()

#### Returns

raw Convert integer to little-endian raw vector of given size (bytes)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DeleteContactsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
