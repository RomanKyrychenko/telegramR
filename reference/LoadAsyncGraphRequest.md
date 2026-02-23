# LoadAsyncGraphRequest

Telegram API type LoadAsyncGraphRequest

## Details

LoadAsyncGraphRequest

R6 class representing a LoadAsyncGraphRequest TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `LoadAsyncGraphRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `token`:

  Field.

- `x`:

  Field.

## Methods

### Public methods

- [`LoadAsyncGraphRequest$new()`](#method-LoadAsyncGraphRequest-new)

- [`LoadAsyncGraphRequest$to_list()`](#method-LoadAsyncGraphRequest-to_list)

- [`LoadAsyncGraphRequest$to_bytes()`](#method-LoadAsyncGraphRequest-to_bytes)

- [`LoadAsyncGraphRequest$from_reader()`](#method-LoadAsyncGraphRequest-from_reader)

- [`LoadAsyncGraphRequest$clone()`](#method-LoadAsyncGraphRequest-clone)

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
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initializes a new LoadAsyncGraphRequest.

#### Usage

    LoadAsyncGraphRequest$new(token, x = NULL)

#### Arguments

- `token`:

  character token

- `x`:

  integer64 or numeric; optional x

------------------------------------------------------------------------

### Method `to_list()`

Initialize a new LoadAsyncGraphRequest.

#### Usage

    LoadAsyncGraphRequest$to_list()

#### Returns

List representing the request.

------------------------------------------------------------------------

### Method `to_bytes()`

Convert to a plain list (like to_dict)

#### Usage

    LoadAsyncGraphRequest$to_bytes()

#### Returns

A list representing the request.

------------------------------------------------------------------------

### Method `from_reader()`

Serialize to raw bytes (relies on token serialization and helper utils
in parent)

#### Usage

    LoadAsyncGraphRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object to read the serialized data.

#### Returns

A raw vector representing the serialized request.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LoadAsyncGraphRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
