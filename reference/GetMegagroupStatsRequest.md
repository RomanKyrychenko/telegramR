# GetMegagroupStatsRequest

Telegram API type GetMegagroupStatsRequest

## Details

GetMegagroupStatsRequest

R6 class representing a GetMegagroupStatsRequest TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetMegagroupStatsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `dark`:

  Field.

## Methods

### Public methods

- [`GetMegagroupStatsRequest$new()`](#method-GetMegagroupStatsRequest-new)

- [`GetMegagroupStatsRequest$resolve()`](#method-GetMegagroupStatsRequest-resolve)

- [`GetMegagroupStatsRequest$to_list()`](#method-GetMegagroupStatsRequest-to_list)

- [`GetMegagroupStatsRequest$to_bytes()`](#method-GetMegagroupStatsRequest-to_bytes)

- [`GetMegagroupStatsRequest$from_reader()`](#method-GetMegagroupStatsRequest-from_reader)

- [`GetMegagroupStatsRequest$clone()`](#method-GetMegagroupStatsRequest-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initializes a new GetMegagroupStatsRequest.

#### Usage

    GetMegagroupStatsRequest$new(channel, dark = NULL)

#### Arguments

- `channel`:

  input channel object

- `dark`:

  logical; optional dark flag

------------------------------------------------------------------------

### Method `resolve()`

Resolve input entities (expects client and utils helpers to exist)

#### Usage

    GetMegagroupStatsRequest$resolve(client)

#### Arguments

- `client`:

  The client instance to resolve entities.

------------------------------------------------------------------------

### Method `to_list()`

Convert to a plain list (like to_dict)

#### Usage

    GetMegagroupStatsRequest$to_list()

#### Returns

A list representing the request.

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (relies on channel\$to_bytes() and helper utils
in parent)

#### Usage

    GetMegagroupStatsRequest$to_bytes()

#### Returns

A raw vector representing the serialized request.

------------------------------------------------------------------------

### Method `from_reader()`

Create instance from a reader object (reader must provide read_int,
tgread_object)

#### Usage

    GetMegagroupStatsRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object to read the serialized data.

#### Returns

A new instance of GetMegagroupStatsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetMegagroupStatsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
