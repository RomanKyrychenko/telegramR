# GetTopPeersRequest

Methods: - initialize(offset, limit, hash, ...): create new request -
to_list(): return a list representation suitable for JSON/dumping -
to_bytes(): return raw vector of bytes for the TL request -
from_reader(reader): read from reader and return a new instance

## Details

R6 representation of the TL request: GetTopPeersRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetTopPeersRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `offset`:

  Field.

- `limit`:

  Field.

- `hash`:

  Field.

- `correspondents`:

  Field.

- `bots_pm`:

  Field.

- `bots_inline`:

  Field.

- `phone_calls`:

  Field.

- `forward_users`:

  Field.

- `forward_chats`:

  Field.

- `groups`:

  Field.

- `channels`:

  Field.

- `bots_app`:

  Field.

## Methods

### Public methods

- [`GetTopPeersRequest$new()`](#method-GetTopPeersRequest-new)

- [`GetTopPeersRequest$to_list()`](#method-GetTopPeersRequest-to_list)

- [`GetTopPeersRequest$to_bytes()`](#method-GetTopPeersRequest-to_bytes)

- [`GetTopPeersRequest$clone()`](#method-GetTopPeersRequest-clone)

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
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize GetTopPeersRequest

#### Usage

    GetTopPeersRequest$new(
      offset,
      limit,
      hash,
      correspondents = NULL,
      bots_pm = NULL,
      bots_inline = NULL,
      phone_calls = NULL,
      forward_users = NULL,
      forward_chats = NULL,
      groups = NULL,
      channels = NULL,
      bots_app = NULL
    )

#### Arguments

- `offset`:

  integer

- `limit`:

  integer

- `hash`:

  numeric/integer (64-bit)

- `correspondents`:

  logical\|NULL

- `bots_pm`:

  logical\|NULL

- `bots_inline`:

  logical\|NULL

- `phone_calls`:

  logical\|NULL

- `forward_users`:

  logical\|NULL

- `forward_chats`:

  logical\|NULL

- `groups`:

  logical\|NULL

- `channels`:

  logical\|NULL

- `bots_app`:

  logical\|NULL Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetTopPeersRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetTopPeersRequest$to_bytes()

#### Returns

raw Convert integer to little-endian raw vector of given size (bytes)
Convert 64-bit integer (numeric) to little-endian raw vector (8 bytes)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetTopPeersRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
