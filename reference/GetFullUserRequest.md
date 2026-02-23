# GetFullUserRequest

Telegram API type GetFullUserRequest

## Details

GetFullUserRequest

An R6 class representing a request to get full information about a user.
This class inherits from TLRequest and is used to construct and
serialize Telegram API requests for retrieving detailed user data.

representation accepted by get_input_user. This field is resolved during
the request preparation.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetFullUserRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

## Methods

### Public methods

- [`GetFullUserRequest$new()`](#method-GetFullUserRequest-new)

- [`GetFullUserRequest$resolve()`](#method-GetFullUserRequest-resolve)

- [`GetFullUserRequest$to_dict()`](#method-GetFullUserRequest-to_dict)

- [`GetFullUserRequest$bytes()`](#method-GetFullUserRequest-bytes)

- [`GetFullUserRequest$from_reader()`](#method-GetFullUserRequest-from_reader)

- [`GetFullUserRequest$clone()`](#method-GetFullUserRequest-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Request to get full information about a user.

#### Usage

    GetFullUserRequest$new(id = NULL)

#### Arguments

- `id`:

  TLInputUser or a representation accepted by utils\$get_input_user

------------------------------------------------------------------------

### Method `resolve()`

Resolves the id field using the provided client and utils.

#### Usage

    GetFullUserRequest$resolve(client, utils)

#### Arguments

- `client`:

  A client object to resolve user references.

- `utils`:

  A utils object with methods to get input user representations.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the GetFullUserRequest to a dictionary (list).

#### Usage

    GetFullUserRequest$to_dict()

#### Returns

A list representation of the GetFullUserRequest.

------------------------------------------------------------------------

### Method `bytes()`

Converts the GetFullUserRequest to raw bytes.

#### Usage

    GetFullUserRequest$bytes()

#### Returns

A raw vector representing the GetFullUserRequest.

------------------------------------------------------------------------

### Method `from_reader()`

Creates a GetFullUserRequest from a reader object.

#### Usage

    GetFullUserRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object to read the response.

#### Returns

A new instance of GetFullUserRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetFullUserRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
