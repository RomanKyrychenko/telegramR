# GetStoryViewsListRequest R6 class

GetStoryViewsListRequest R6 class

GetStoryViewsListRequest R6 class

## Details

Request to get a list of story views with optional filters
(just_contacts, reactions_first, forwards_first, q). Returns a
stories.StoryViewsList.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetStoryViewsListRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `id`:

  Field.

- `offset`:

  Field.

- `limit`:

  Field.

- `just_contacts`:

  Field.

- `reactions_first`:

  Field.

- `forwards_first`:

  Field.

- `q`:

  Field.

## Methods

### Public methods

- [`GetStoryViewsListRequest$new()`](#method-GetStoryViewsListRequest-new)

- [`GetStoryViewsListRequest$resolve()`](#method-GetStoryViewsListRequest-resolve)

- [`GetStoryViewsListRequest$to_list()`](#method-GetStoryViewsListRequest-to_list)

- [`GetStoryViewsListRequest$to_bytes()`](#method-GetStoryViewsListRequest-to_bytes)

- [`GetStoryViewsListRequest$clone()`](#method-GetStoryViewsListRequest-clone)

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

Initialize GetStoryViewsListRequest

#### Usage

    GetStoryViewsListRequest$new(
      peer,
      id,
      offset,
      limit,
      just_contacts = NULL,
      reactions_first = NULL,
      forwards_first = NULL,
      q = NULL
    )

#### Arguments

- `peer`:

  TypeInputPeer

- `id`:

  integer story id

- `offset`:

  character offset cursor

- `limit`:

  integer limit

- `just_contacts`:

  logical or NULL

- `reactions_first`:

  logical or NULL

- `forwards_first`:

  logical or NULL

- `q`:

  character or NULL search query

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer references

#### Usage

    GetStoryViewsListRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity

- `utils`:

  utils with get_input_peer

------------------------------------------------------------------------

### Method `to_list()`

Convert to list

#### Usage

    GetStoryViewsListRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    GetStoryViewsListRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetStoryViewsListRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
