# SetSecureValueErrorsRequest

Represents a request to set secure value errors for a Telegram user.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SetSecureValueErrorsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `errors`:

  Field.

## Methods

### Public methods

- [`SetSecureValueErrorsRequest$new()`](#method-SetSecureValueErrorsRequest-new)

- [`SetSecureValueErrorsRequest$resolve()`](#method-SetSecureValueErrorsRequest-resolve)

- [`SetSecureValueErrorsRequest$to_dict()`](#method-SetSecureValueErrorsRequest-to_dict)

- [`SetSecureValueErrorsRequest$bytes()`](#method-SetSecureValueErrorsRequest-bytes)

- [`SetSecureValueErrorsRequest$from_reader()`](#method-SetSecureValueErrorsRequest-from_reader)

- [`SetSecureValueErrorsRequest$clone()`](#method-SetSecureValueErrorsRequest-clone)

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

Request to set secure value errors for a user.

#### Usage

    SetSecureValueErrorsRequest$new(id = NULL, errors = NULL)

#### Arguments

- `id`:

  TLInputUser or a representation accepted by get_input_user

- `errors`:

  List of TLSecureValueError or representations accepted by
  get_secure_value_error

------------------------------------------------------------------------

### Method `resolve()`

Initializes the SetSecureValueErrorsRequest.

#### Usage

    SetSecureValueErrorsRequest$resolve(client, utils)

#### Arguments

- `id`:

  TLInputUser or a representation accepted by get_input_user

- `errors`:

  List of TLSecureValueError or representations accepted by
  get_secure_value

------------------------------------------------------------------------

### Method `to_dict()`

Resolves the id and errors fields using the provided client and utils.

#### Usage

    SetSecureValueErrorsRequest$to_dict()

#### Returns

List with resolved id and errors.

------------------------------------------------------------------------

### Method `bytes()`

Converts the SetSecureValueErrorsRequest to a dictionary (list).

#### Usage

    SetSecureValueErrorsRequest$bytes()

#### Returns

A list representation of the SetSecureValueErrorsRequest.

------------------------------------------------------------------------

### Method `from_reader()`

Converts the SetSecureValueErrorsRequest to raw bytes.

#### Usage

    SetSecureValueErrorsRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object to read the response.

#### Returns

A raw vector representing the SetSecureValueErrorsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetSecureValueErrorsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
