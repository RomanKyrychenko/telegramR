# CreateAlbumRequest

Telegram API type CreateAlbumRequest

## Details

CreateAlbumRequest R6 class

Request to create a story album for a given peer with a title and list
of story ids. Returns StoryAlbum.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `CreateAlbumRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `title`:

  Field.

- `stories`:

  Field.

## Methods

### Public methods

- [`CreateAlbumRequest$new()`](#method-CreateAlbumRequest-new)

- [`CreateAlbumRequest$resolve()`](#method-CreateAlbumRequest-resolve)

- [`CreateAlbumRequest$to_list()`](#method-CreateAlbumRequest-to_list)

- [`CreateAlbumRequest$to_bytes()`](#method-CreateAlbumRequest-to_bytes)

- [`CreateAlbumRequest$clone()`](#method-CreateAlbumRequest-clone)

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

Initialize CreateAlbumRequest

#### Usage

    CreateAlbumRequest$new(peer, title, stories)

#### Arguments

- `peer`:

  TypeInputPeer

- `title`:

  character

- `stories`:

  integer vector

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer references

Convert high-level peer reference to an input peer using client/utils.

#### Usage

    CreateAlbumRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity

- `utils`:

  utils with get_input_peer

------------------------------------------------------------------------

### Method `to_list()`

Convert to list

#### Usage

    CreateAlbumRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    CreateAlbumRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CreateAlbumRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
