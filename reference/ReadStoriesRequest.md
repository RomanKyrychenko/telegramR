# ReadStoriesRequest R6 class

ReadStoriesRequest R6 class

ReadStoriesRequest R6 class

## Details

Represents a TL request that reads stories up to a given max_id and
returns a Vector\<int\> result.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ReadStoriesRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `max_id`:

  Field.

## Methods

### Public methods

- [`ReadStoriesRequest$new()`](#method-ReadStoriesRequest-new)

- [`ReadStoriesRequest$resolve()`](#method-ReadStoriesRequest-resolve)

- [`ReadStoriesRequest$to_list()`](#method-ReadStoriesRequest-to_list)

- [`ReadStoriesRequest$to_bytes()`](#method-ReadStoriesRequest-to_bytes)

- [`ReadStoriesRequest$clone()`](#method-ReadStoriesRequest-clone)

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

Initialize ReadStoriesRequest

#### Usage

    ReadStoriesRequest$new(peer, max_id)

#### Arguments

- `peer`:

  TypeInputPeer

- `max_id`:

  integer

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer references

Convert a high-level peer reference to an input peer using client/utils.

#### Usage

    ReadStoriesRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object with get_input_entity method

- `utils`:

  utils object with get_input_peer method

------------------------------------------------------------------------

### Method `to_list()`

Convert to list

#### Usage

    ReadStoriesRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    ReadStoriesRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReadStoriesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
