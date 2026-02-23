# ResolveUsernameRequest

Methods: - initialize(username, referer = NULL): create new request -
to_list(): return a list representation suitable for JSON/dumping -
to_bytes(): return raw vector of bytes for the TL request

## Details

R6 representation of the TL request: ResolveUsernameRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ResolveUsernameRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `username`:

  Field.

- `referer`:

  Field.

## Methods

### Public methods

- [`ResolveUsernameRequest$new()`](#method-ResolveUsernameRequest-new)

- [`ResolveUsernameRequest$to_list()`](#method-ResolveUsernameRequest-to_list)

- [`ResolveUsernameRequest$to_bytes()`](#method-ResolveUsernameRequest-to_bytes)

- [`ResolveUsernameRequest$clone()`](#method-ResolveUsernameRequest-clone)

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

Initialize ResolveUsernameRequest

#### Usage

    ResolveUsernameRequest$new(username, referer = NULL)

#### Arguments

- `username`:

  character username

- `referer`:

  character or NULL referer Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ResolveUsernameRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

Packs flags indicating presence of referer and serializes username and
optional referer.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    ResolveUsernameRequest$to_bytes()

#### Returns

raw Convert integer to little-endian raw vector of given size (bytes)
Serialize an R string to TL string bytes (per Telegram TL encoding)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ResolveUsernameRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
