# GetSponsoredPeersRequest

Methods: - initialize(q): create new request - to_list(): return a list
representation suitable for JSON/dumping - to_bytes(): return raw vector
of bytes for the TL request

## Details

R6 representation of the TL request: GetSponsoredPeersRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetSponsoredPeersRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `q`:

  Field.

## Methods

### Public methods

- [`GetSponsoredPeersRequest$new()`](#method-GetSponsoredPeersRequest-new)

- [`GetSponsoredPeersRequest$to_list()`](#method-GetSponsoredPeersRequest-to_list)

- [`GetSponsoredPeersRequest$to_bytes()`](#method-GetSponsoredPeersRequest-to_bytes)

- [`GetSponsoredPeersRequest$clone()`](#method-GetSponsoredPeersRequest-clone)

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

Initialize GetSponsoredPeersRequest

#### Usage

    GetSponsoredPeersRequest$new(q)

#### Arguments

- `q`:

  character query string Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetSponsoredPeersRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetSponsoredPeersRequest$to_bytes()

#### Returns

raw Serialize an R string to TL string bytes (per Telegram TL encoding)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetSponsoredPeersRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
