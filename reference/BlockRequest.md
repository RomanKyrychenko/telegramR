# BlockRequest

Methods: - initialize(id, my_stories_from = NULL): create new request -
resolve(client, utils): resolve id into input_peer using client and
utils - to_list(): return a list representation suitable for
JSON/dumping - to_bytes(): return raw vector of bytes for the TL request

## Details

R6 representation of the TL request: BlockRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `BlockRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `my_stories_from`:

  Field.

## Methods

### Public methods

- [`BlockRequest$new()`](#method-BlockRequest-new)

- [`BlockRequest$resolve()`](#method-BlockRequest-resolve)

- [`BlockRequest$to_list()`](#method-BlockRequest-to_list)

- [`BlockRequest$to_bytes()`](#method-BlockRequest-to_bytes)

- [`BlockRequest$clone()`](#method-BlockRequest-clone)

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

Initialize BlockRequest

#### Usage

    BlockRequest$new(id, my_stories_from = NULL)

#### Arguments

- `id`:

  input peer (object or identifier)

- `my_stories_from`:

  logical or NULL Resolve entities using client and utils

  This will replace \`id\` with an input_peer object obtained via
  utils\$get_input_peer(...)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    BlockRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object with method get_input_entity()

- `utils`:

  utils object with method get_input_peer() Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    BlockRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

Packs flags as uint32 little-endian and appends id bytes. Assumes id has
method to_bytes() which returns a raw vector or is a raw vector.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    BlockRequest$to_bytes()

#### Returns

raw Convert integer to little-endian raw vector of given size (bytes)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BlockRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
