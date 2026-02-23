# TogglePinnedRequest R6 class

TogglePinnedRequest R6 class

TogglePinnedRequest R6 class

## Details

Represents a TL request to toggle pinned state for stories.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `TogglePinnedRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `id`:

  Field.

- `pinned`:

  Field.

## Methods

### Public methods

- [`TogglePinnedRequest$new()`](#method-TogglePinnedRequest-new)

- [`TogglePinnedRequest$resolve()`](#method-TogglePinnedRequest-resolve)

- [`TogglePinnedRequest$to_list()`](#method-TogglePinnedRequest-to_list)

- [`TogglePinnedRequest$to_bytes()`](#method-TogglePinnedRequest-to_bytes)

- [`TogglePinnedRequest$clone()`](#method-TogglePinnedRequest-clone)

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

Initialize TogglePinnedRequest

#### Usage

    TogglePinnedRequest$new(peer, id, pinned)

#### Arguments

- `peer`:

  TypeInputPeer

- `id`:

  integer vector of story ids

- `pinned`:

  logical

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer references

Convert high-level peer references to input peers using provided
client/utils.

#### Usage

    TogglePinnedRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object with get_input_entity method

- `utils`:

  utils object with get_input_peer method

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (similar to to_dict)

Prepare a pure R list representation suitable for inspection or JSON.

#### Usage

    TogglePinnedRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes

Produces a raw vector matching TL binary layout. Expects helper
serialization methods on peer (to_bytes/bytes/\_bytes) and writeBin
available.

#### Usage

    TogglePinnedRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TogglePinnedRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
