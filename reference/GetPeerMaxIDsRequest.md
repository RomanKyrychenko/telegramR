# GetPeerMaxIDsRequest

Telegram API type GetPeerMaxIDsRequest

## Details

GetPeerMaxIDsRequest R6 class

Request to get maximum IDs for a vector of input peers. Returns
Vector\<int\>.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetPeerMaxIDsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

## Methods

### Public methods

- [`GetPeerMaxIDsRequest$new()`](#method-GetPeerMaxIDsRequest-new)

- [`GetPeerMaxIDsRequest$resolve()`](#method-GetPeerMaxIDsRequest-resolve)

- [`GetPeerMaxIDsRequest$to_list()`](#method-GetPeerMaxIDsRequest-to_list)

- [`GetPeerMaxIDsRequest$to_bytes()`](#method-GetPeerMaxIDsRequest-to_bytes)

- [`GetPeerMaxIDsRequest$clone()`](#method-GetPeerMaxIDsRequest-clone)

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

Initialize GetPeerMaxIDsRequest

#### Usage

    GetPeerMaxIDsRequest$new(id)

#### Arguments

- `id`:

  list of TypeInputPeer

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer references

Convert high-level peer references to input peers using client/utils.

#### Usage

    GetPeerMaxIDsRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity

- `utils`:

  utils with get_input_peer

------------------------------------------------------------------------

### Method `to_list()`

Convert to list

#### Usage

    GetPeerMaxIDsRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    GetPeerMaxIDsRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetPeerMaxIDsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
