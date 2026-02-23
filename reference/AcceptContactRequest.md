# AcceptContactRequest

Methods: - initialize(id): create new request - resolve(client, utils):
resolve id into input_user using client and utils - to_list(): return a
list representation suitable for JSON/dumping - to_bytes(): return raw
vector of bytes for the TL request - from_reader(reader): read from
reader and return new instance

## Details

R6 representation of the TL request: AcceptContactRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `AcceptContactRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

## Methods

### Public methods

- [`AcceptContactRequest$new()`](#method-AcceptContactRequest-new)

- [`AcceptContactRequest$resolve()`](#method-AcceptContactRequest-resolve)

- [`AcceptContactRequest$to_list()`](#method-AcceptContactRequest-to_list)

- [`AcceptContactRequest$to_bytes()`](#method-AcceptContactRequest-to_bytes)

- [`AcceptContactRequest$clone()`](#method-AcceptContactRequest-clone)

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

Initialize AcceptContactRequest

#### Usage

    AcceptContactRequest$new(id)

#### Arguments

- `id`:

  input user object or identifier Resolve entities using client and
  utils

  Replaces \`id\` with
  utils\$get_input_user(client\$get_input_entity(id))

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    AcceptContactRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object with method get_input_entity()

- `utils`:

  utils object with method get_input_user() Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    AcceptContactRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    AcceptContactRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AcceptContactRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
