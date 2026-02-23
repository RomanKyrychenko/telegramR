# GetUsersRequest

Request to get a vector of users by input user references.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetUsersRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

## Methods

### Public methods

- [`GetUsersRequest$new()`](#method-GetUsersRequest-new)

- [`GetUsersRequest$resolve()`](#method-GetUsersRequest-resolve)

- [`GetUsersRequest$to_dict()`](#method-GetUsersRequest-to_dict)

- [`GetUsersRequest$bytes()`](#method-GetUsersRequest-bytes)

- [`GetUsersRequest$from_reader()`](#method-GetUsersRequest-from_reader)

- [`GetUsersRequest$clone()`](#method-GetUsersRequest-clone)

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

Initializes the GetUsersRequest.

#### Usage

    GetUsersRequest$new(id = NULL)

#### Arguments

- `id`:

  List of TLInputUser or representations accepted by get_input_user

------------------------------------------------------------------------

### Method `resolve()`

Resolves the id field using the provided client and utils.

#### Usage

    GetUsersRequest$resolve(client, utils)

#### Arguments

- `client`:

  A client object to resolve user references.

- `utils`:

  A utils object with methods to get input user representations.

------------------------------------------------------------------------

### Method `to_dict()`

Request to get a vector of users by input user references.

#### Usage

    GetUsersRequest$to_dict()

#### Returns

List of resolved id objects.

------------------------------------------------------------------------

### Method `bytes()`

Initializes the GetUsersRequest.

#### Usage

    GetUsersRequest$bytes()

#### Returns

List of resolved id objects.

------------------------------------------------------------------------

### Method `from_reader()`

Converts the GetUsersRequest to raw bytes.

#### Usage

    GetUsersRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object to read the response.

#### Returns

A raw vector representing the GetUsersRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetUsersRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
