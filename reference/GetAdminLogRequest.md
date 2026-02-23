# GetAdminLogRequest

Represents a request to get the admin log for a channel.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetAdminLogRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `q`:

  Field.

- `max_id`:

  Field.

- `min_id`:

  Field.

- `limit`:

  Field.

- `events_filter`:

  Field.

- `admins`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`GetAdminLogRequest$new()`](#method-GetAdminLogRequest-new)

- [`GetAdminLogRequest$resolve()`](#method-GetAdminLogRequest-resolve)

- [`GetAdminLogRequest$to_dict()`](#method-GetAdminLogRequest-to_dict)

- [`GetAdminLogRequest$bytes()`](#method-GetAdminLogRequest-bytes)

- [`GetAdminLogRequest$clone()`](#method-GetAdminLogRequest-clone)

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
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize the GetAdminLogRequest.

#### Usage

    GetAdminLogRequest$new(
      channel,
      q,
      max_id,
      min_id,
      limit,
      events_filter = NULL,
      admins = NULL
    )

#### Arguments

- `channel`:

  The input channel.

- `q`:

  The query string.

- `max_id`:

  The maximum ID.

- `min_id`:

  The minimum ID.

- `limit`:

  The limit on the number of results.

- `events_filter`:

  The events filter (optional).

- `admins`:

  The list of admin users (optional).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the channel and admins entities.

#### Usage

    GetAdminLogRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utilities object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    GetAdminLogRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetAdminLogRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetAdminLogRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
