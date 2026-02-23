# GetAdminedPublicChannelsRequest

Represents a request to get admined public channels.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetAdminedPublicChannelsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `by_location`:

  Field.

- `check_limit`:

  Field.

- `for_personal`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`GetAdminedPublicChannelsRequest$new()`](#method-GetAdminedPublicChannelsRequest-new)

- [`GetAdminedPublicChannelsRequest$to_dict()`](#method-GetAdminedPublicChannelsRequest-to_dict)

- [`GetAdminedPublicChannelsRequest$bytes()`](#method-GetAdminedPublicChannelsRequest-bytes)

- [`GetAdminedPublicChannelsRequest$clone()`](#method-GetAdminedPublicChannelsRequest-clone)

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
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize the GetAdminedPublicChannelsRequest.

#### Usage

    GetAdminedPublicChannelsRequest$new(
      by_location = NULL,
      check_limit = NULL,
      for_personal = NULL
    )

#### Arguments

- `by_location`:

  Whether to filter by location.

- `check_limit`:

  Whether to check the limit.

- `for_personal`:

  Whether for personal use.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    GetAdminedPublicChannelsRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetAdminedPublicChannelsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetAdminedPublicChannelsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
