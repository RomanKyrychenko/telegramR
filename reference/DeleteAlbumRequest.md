# DeleteAlbumRequest

Telegram API type DeleteAlbumRequest

## Details

DeleteAlbumRequest R6 class

Request to delete an album for a given peer. Returns Bool.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `DeleteAlbumRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `album_id`:

  Field.

## Methods

### Public methods

- [`DeleteAlbumRequest$new()`](#method-DeleteAlbumRequest-new)

- [`DeleteAlbumRequest$resolve()`](#method-DeleteAlbumRequest-resolve)

- [`DeleteAlbumRequest$to_list()`](#method-DeleteAlbumRequest-to_list)

- [`DeleteAlbumRequest$to_bytes()`](#method-DeleteAlbumRequest-to_bytes)

- [`DeleteAlbumRequest$clone()`](#method-DeleteAlbumRequest-clone)

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

Initialize DeleteAlbumRequest

#### Usage

    DeleteAlbumRequest$new(peer, album_id)

#### Arguments

- `peer`:

  TypeInputPeer

- `album_id`:

  integer

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer references

Convert a high-level peer reference to an input peer using client/utils.

#### Usage

    DeleteAlbumRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity

- `utils`:

  utils with get_input_peer

------------------------------------------------------------------------

### Method `to_list()`

Convert to list

#### Usage

    DeleteAlbumRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    DeleteAlbumRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DeleteAlbumRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
