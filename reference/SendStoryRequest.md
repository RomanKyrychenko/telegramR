# SendStoryRequest R6 class

SendStoryRequest R6 class

SendStoryRequest R6 class

## Details

Represents a TL request to send a story.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SendStoryRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `media`:

  Field.

- `privacy_rules`:

  Field.

- `pinned`:

  Field.

- `noforwards`:

  Field.

- `fwd_modified`:

  Field.

- `media_areas`:

  Field.

- `caption`:

  Field.

- `entities`:

  Field.

- `random_id`:

  Field.

- `period`:

  Field.

- `fwd_from_id`:

  Field.

- `fwd_from_story`:

  Field.

- `albums`:

  Field.

## Methods

### Public methods

- [`SendStoryRequest$new()`](#method-SendStoryRequest-new)

- [`SendStoryRequest$resolve()`](#method-SendStoryRequest-resolve)

- [`SendStoryRequest$to_list()`](#method-SendStoryRequest-to_list)

- [`SendStoryRequest$to_bytes()`](#method-SendStoryRequest-to_bytes)

- [`SendStoryRequest$clone()`](#method-SendStoryRequest-clone)

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

Initialize SendStoryRequest

#### Usage

    SendStoryRequest$new(
      peer,
      media,
      privacy_rules,
      pinned = NULL,
      noforwards = NULL,
      fwd_modified = NULL,
      media_areas = NULL,
      caption = NULL,
      entities = NULL,
      random_id = NULL,
      period = NULL,
      fwd_from_id = NULL,
      fwd_from_story = NULL,
      albums = NULL
    )

#### Arguments

- `peer`:

  TypeInputPeer

- `media`:

  TypeInputMedia

- `privacy_rules`:

  list

- `pinned`:

  logical or NULL

- `noforwards`:

  logical or NULL

- `fwd_modified`:

  logical or NULL

- `media_areas`:

  list or NULL

- `caption`:

  character or NULL

- `entities`:

  list or NULL

- `random_id`:

  numeric/integer or NULL (auto-generated when NULL)

- `period`:

  integer or NULL

- `fwd_from_id`:

  TypeInputPeer or NULL

- `fwd_from_story`:

  integer or NULL

- `albums`:

  integer vector or NULL

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer and forward references

#### Usage

    SendStoryRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object with get_input_entity

- `utils`:

  utils object with get_input_peer / get_input_media

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (similar to to_dict)

#### Usage

    SendStoryRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes

Produces a raw vector matching TL binary layout for this request.
Expects helper serialization methods on
peer/media/privacy_rules/media_areas/entities/fwd_from_id.

#### Usage

    SendStoryRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SendStoryRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
