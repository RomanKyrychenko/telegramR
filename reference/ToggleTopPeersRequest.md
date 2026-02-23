# ToggleTopPeersRequest

Methods: - initialize(enabled): create new request - to_list(): return a
list representation suitable for JSON/dumping - to_bytes(): return raw
vector of bytes for the TL request - from_reader(reader): class method
to read from a reader and return a new instance

## Details

R6 representation of the TL request: ToggleTopPeersRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ToggleTopPeersRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `enabled`:

  Field.

## Methods

### Public methods

- [`ToggleTopPeersRequest$new()`](#method-ToggleTopPeersRequest-new)

- [`ToggleTopPeersRequest$to_list()`](#method-ToggleTopPeersRequest-to_list)

- [`ToggleTopPeersRequest$to_bytes()`](#method-ToggleTopPeersRequest-to_bytes)

- [`ToggleTopPeersRequest$clone()`](#method-ToggleTopPeersRequest-clone)

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

Initialize ToggleTopPeersRequest

#### Usage

    ToggleTopPeersRequest$new(enabled)

#### Arguments

- `enabled`:

  logical Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ToggleTopPeersRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    ToggleTopPeersRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleTopPeersRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
