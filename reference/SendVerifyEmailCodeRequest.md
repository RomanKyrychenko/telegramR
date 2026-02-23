# SendVerifyEmailCodeRequest

R6 class representing a SendVerifyEmailCodeRequest.

## Details

This class handles sending a verify email code request with purpose and
email.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SendVerifyEmailCodeRequest`

## Methods

### Public methods

- [`SendVerifyEmailCodeRequest$new()`](#method-SendVerifyEmailCodeRequest-new)

- [`SendVerifyEmailCodeRequest$toDict()`](#method-SendVerifyEmailCodeRequest-toDict)

- [`SendVerifyEmailCodeRequest$bytes()`](#method-SendVerifyEmailCodeRequest-bytes)

- [`SendVerifyEmailCodeRequest$fromReader()`](#method-SendVerifyEmailCodeRequest-fromReader)

- [`SendVerifyEmailCodeRequest$clone()`](#method-SendVerifyEmailCodeRequest-clone)

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

Initialize the SendVerifyEmailCodeRequest.

#### Usage

    SendVerifyEmailCodeRequest$new(purpose, email)

#### Arguments

- `purpose`:

  The email verify purpose object.

- `email`:

  The email string.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    SendVerifyEmailCodeRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    SendVerifyEmailCodeRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    SendVerifyEmailCodeRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of SendVerifyEmailCodeRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SendVerifyEmailCodeRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
