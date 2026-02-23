# EditStoryRequest

Telegram API type EditStoryRequest

## Details

EditStoryRequest R6 class

Request to edit an existing story. Depending on flags this may include
media, media areas, caption+entities (both must be provided together)
and privacy rules. Returns Updates.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `EditStoryRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `id`:

  Field.

- `media`:

  Field.

- `media_areas`:

  Field.

- `caption`:

  Field.

- `entities`:

  Field.

- `privacy_rules`:

  Field.

## Methods

### Public methods

- [`EditStoryRequest$new()`](#method-EditStoryRequest-new)

- [`EditStoryRequest$resolve()`](#method-EditStoryRequest-resolve)

- [`EditStoryRequest$to_list()`](#method-EditStoryRequest-to_list)

- [`EditStoryRequest$to_bytes()`](#method-EditStoryRequest-to_bytes)

- [`EditStoryRequest$clone()`](#method-EditStoryRequest-clone)

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

Initialize EditStoryRequest

#### Usage

    EditStoryRequest$new(
      peer,
      id,
      media = NULL,
      media_areas = NULL,
      caption = NULL,
      entities = NULL,
      privacy_rules = NULL
    )

#### Arguments

- `peer`:

  TypeInputPeer

- `id`:

  integer

- `media`:

  TypeInputMedia or NULL

- `media_areas`:

  list or NULL

- `caption`:

  character or NULL (must be provided together with entities)

- `entities`:

  list or NULL (must be provided together with caption)

- `privacy_rules`:

  list or NULL

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer/media references

Convert high-level references to input forms using client/utils.

#### Usage

    EditStoryRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity

- `utils`:

  utils with get_input_peer and get_input_media

------------------------------------------------------------------------

### Method `to_list()`

Convert to list

#### Usage

    EditStoryRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    EditStoryRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EditStoryRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
