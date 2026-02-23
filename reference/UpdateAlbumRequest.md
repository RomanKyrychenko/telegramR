# UpdateAlbumRequest R6 class

UpdateAlbumRequest R6 class

UpdateAlbumRequest R6 class

## Details

Represents a TL request to update a story album.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdateAlbumRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `album_id`:

  Field.

- `title`:

  Field.

- `delete_stories`:

  Field.

- `add_stories`:

  Field.

- `order`:

  Field.

## Methods

### Public methods

- [`UpdateAlbumRequest$new()`](#method-UpdateAlbumRequest-new)

- [`UpdateAlbumRequest$resolve()`](#method-UpdateAlbumRequest-resolve)

- [`UpdateAlbumRequest$to_list()`](#method-UpdateAlbumRequest-to_list)

- [`UpdateAlbumRequest$to_bytes()`](#method-UpdateAlbumRequest-to_bytes)

- [`UpdateAlbumRequest$clone()`](#method-UpdateAlbumRequest-clone)

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

Initialize UpdateAlbumRequest

#### Usage

    UpdateAlbumRequest$new(
      peer,
      album_id,
      title = NULL,
      delete_stories = NULL,
      add_stories = NULL,
      order = NULL
    )

#### Arguments

- `peer`:

  TypeInputPeer

- `album_id`:

  integer

- `title`:

  character or NULL

- `delete_stories`:

  integer vector or NULL

- `add_stories`:

  integer vector or NULL

- `order`:

  integer vector or NULL

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer references

Convert high-level peer references to input peers using provided
client/utils.

#### Usage

    UpdateAlbumRequest$resolve(client, utils)

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

    UpdateAlbumRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes

This produces a raw vector intended to match the TL binary layout used
in the original implementation. It expects helper serialization methods
available on the peer object (peer\$to_bytes / peer\$bytes), and a
serialize_bytes(self, string) method on the TLRequest base or in scope.

#### Usage

    UpdateAlbumRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateAlbumRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
