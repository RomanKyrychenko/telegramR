# ResetTopPeerRatingRequest

Methods: - initialize(category, peer): create new request -
resolve(client, utils): resolve peer into input_peer using
client/utils - to_list(): return a list representation suitable for
JSON/dumping - to_bytes(): return raw vector of bytes for the TL request

## Details

R6 representation of the TL request: ResetTopPeerRatingRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ResetTopPeerRatingRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `category`:

  Field.

- `peer`:

  Field.

## Methods

### Public methods

- [`ResetTopPeerRatingRequest$new()`](#method-ResetTopPeerRatingRequest-new)

- [`ResetTopPeerRatingRequest$resolve()`](#method-ResetTopPeerRatingRequest-resolve)

- [`ResetTopPeerRatingRequest$to_list()`](#method-ResetTopPeerRatingRequest-to_list)

- [`ResetTopPeerRatingRequest$to_bytes()`](#method-ResetTopPeerRatingRequest-to_bytes)

- [`ResetTopPeerRatingRequest$clone()`](#method-ResetTopPeerRatingRequest-clone)

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

Initialize ResetTopPeerRatingRequest

#### Usage

    ResetTopPeerRatingRequest$new(category, peer)

#### Arguments

- `category`:

  TL object for TopPeerCategory

- `peer`:

  input_peer object or identifier Resolve entities using client and
  utils

  This will replace \`peer\` with an input_peer object obtained via
  utils\$get_input_peer(...)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    ResetTopPeerRatingRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object with method get_input_entity()

- `utils`:

  utils object with method get_input_peer() Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ResetTopPeerRatingRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

Concatenates constructor id and serialized bytes of category and peer.
Expects category and peer to provide to_bytes() or be raw vectors.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    ResetTopPeerRatingRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ResetTopPeerRatingRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
