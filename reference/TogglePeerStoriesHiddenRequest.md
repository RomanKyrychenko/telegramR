# TogglePeerStoriesHiddenRequest R6 class

TogglePeerStoriesHiddenRequest R6 class

TogglePeerStoriesHiddenRequest R6 class

## Details

Represents a TL request to toggle hidden state for stories of a
particular peer.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `TogglePeerStoriesHiddenRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `hidden`:

  Field.

## Methods

### Public methods

- [`TogglePeerStoriesHiddenRequest$new()`](#method-TogglePeerStoriesHiddenRequest-new)

- [`TogglePeerStoriesHiddenRequest$resolve()`](#method-TogglePeerStoriesHiddenRequest-resolve)

- [`TogglePeerStoriesHiddenRequest$to_list()`](#method-TogglePeerStoriesHiddenRequest-to_list)

- [`TogglePeerStoriesHiddenRequest$to_bytes()`](#method-TogglePeerStoriesHiddenRequest-to_bytes)

- [`TogglePeerStoriesHiddenRequest$clone()`](#method-TogglePeerStoriesHiddenRequest-clone)

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

Initialize TogglePeerStoriesHiddenRequest

#### Usage

    TogglePeerStoriesHiddenRequest$new(peer, hidden)

#### Arguments

- `peer`:

  TypeInputPeer

- `hidden`:

  logical

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer references

Convert high-level peer references to input peers using provided
client/utils.

#### Usage

    TogglePeerStoriesHiddenRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object with get_input_entity method

- `utils`:

  utils object with get_input_peer method

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (similar to to_dict)

#### Usage

    TogglePeerStoriesHiddenRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes

Produces a raw vector matching TL binary layout. Expects helper
serialization methods on peer (to_bytes/bytes/\_bytes).

#### Usage

    TogglePeerStoriesHiddenRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TogglePeerStoriesHiddenRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
