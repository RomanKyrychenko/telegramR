# TLRequest

Telegram API type TLRequest

## Details

TLRequest Class

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `TLRequest`

## Methods

### Public methods

- [`TLRequest$read_result()`](#method-TLRequest-read_result)

- [`TLRequest$resolve()`](#method-TLRequest-resolve)

- [`TLRequest$clone()`](#method-TLRequest-clone)

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

------------------------------------------------------------------------

### Method `read_result()`

Read the result from a binary reader.

#### Usage

    TLRequest$read_result(reader)

#### Arguments

- `reader`:

  A binary reader object to read the result from.

#### Returns

The result read from the binary reader.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using a client and utility functions.

#### Usage

    TLRequest$resolve(client, utils)

#### Arguments

- `client`:

  A client object to resolve the request.

- `utils`:

  A utility object to assist in resolving the request.

#### Returns

The resolved result.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TLRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
