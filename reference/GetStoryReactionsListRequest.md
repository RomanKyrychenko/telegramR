# GetStoryReactionsListRequest R6 class

GetStoryReactionsListRequest R6 class

GetStoryReactionsListRequest R6 class

## Details

Request to get a list of story reactions with optional filters. Returns
stories.StoryReactionsList.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetStoryReactionsListRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `id`:

  Field.

- `limit`:

  Field.

- `forwards_first`:

  Field.

- `reaction`:

  Field.

- `offset`:

  Field.

## Methods

### Public methods

- [`GetStoryReactionsListRequest$new()`](#method-GetStoryReactionsListRequest-new)

- [`GetStoryReactionsListRequest$resolve()`](#method-GetStoryReactionsListRequest-resolve)

- [`GetStoryReactionsListRequest$to_list()`](#method-GetStoryReactionsListRequest-to_list)

- [`GetStoryReactionsListRequest$to_bytes()`](#method-GetStoryReactionsListRequest-to_bytes)

- [`GetStoryReactionsListRequest$clone()`](#method-GetStoryReactionsListRequest-clone)

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

Initialize GetStoryReactionsListRequest

#### Usage

    GetStoryReactionsListRequest$new(
      peer,
      id,
      limit,
      forwards_first = NULL,
      reaction = NULL,
      offset = NULL
    )

#### Arguments

- `peer`:

  TypeInputPeer

- `id`:

  integer story id

- `limit`:

  integer limit

- `forwards_first`:

  logical or NULL

- `reaction`:

  TypeReaction or NULL

- `offset`:

  character or NULL

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer references

Convert high-level peer reference to input peer using client/utils.

#### Usage

    GetStoryReactionsListRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity

- `utils`:

  utils with get_input_peer

------------------------------------------------------------------------

### Method `to_list()`

Convert to list

#### Usage

    GetStoryReactionsListRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    GetStoryReactionsListRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetStoryReactionsListRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
