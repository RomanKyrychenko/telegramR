# SendReactionRequest

Represents a request to send a reaction. This class inherits from
TLRequest.

## Details

Represents a TL request to send a reaction to a story.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SendReactionRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`SendReactionRequest$new()`](#method-SendReactionRequest-new)

- [`SendReactionRequest$resolve()`](#method-SendReactionRequest-resolve)

- [`SendReactionRequest$to_list()`](#method-SendReactionRequest-to_list)

- [`SendReactionRequest$to_bytes()`](#method-SendReactionRequest-to_bytes)

- [`SendReactionRequest$clone()`](#method-SendReactionRequest-clone)

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

#### Usage

    SendReactionRequest$new(peer, story_id, reaction, add_to_recent = NULL)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    SendReactionRequest$resolve(client, utils)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    SendReactionRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    SendReactionRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SendReactionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SendReactionRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `story_id`:

  Field.

- `reaction`:

  Field.

- `add_to_recent`:

  Field.

## Methods

### Public methods

- [`SendReactionRequest$new()`](#method-SendReactionRequest-new)

- [`SendReactionRequest$resolve()`](#method-SendReactionRequest-resolve)

- [`SendReactionRequest$to_list()`](#method-SendReactionRequest-to_list)

- [`SendReactionRequest$to_bytes()`](#method-SendReactionRequest-to_bytes)

- [`SendReactionRequest$clone()`](#method-SendReactionRequest-clone)

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

Initialize SendReactionRequest

#### Usage

    SendReactionRequest$new(peer, story_id, reaction, add_to_recent = NULL)

#### Arguments

- `peer`:

  TypeInputPeer

- `story_id`:

  integer

- `reaction`:

  TypeReaction

- `add_to_recent`:

  logical or NULL

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer references

Convert high-level peer references to input peers using provided
client/utils.

#### Usage

    SendReactionRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object with get_input_entity method

- `utils`:

  utils object with get_input_peer method

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (similar to to_dict)

#### Usage

    SendReactionRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes

Produces a raw vector matching TL binary layout for this request.
Expects helper serialization methods on peer and reaction
(to_bytes/bytes/\_bytes).

#### Usage

    SendReactionRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SendReactionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
