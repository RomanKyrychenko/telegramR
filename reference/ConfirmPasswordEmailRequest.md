# ConfirmPasswordEmailRequest

R6 class representing a ConfirmPasswordEmailRequest.

## Details

This class handles confirming a password email with a code.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ConfirmPasswordEmailRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`ConfirmPasswordEmailRequest$new()`](#method-ConfirmPasswordEmailRequest-new)

- [`ConfirmPasswordEmailRequest$toDict()`](#method-ConfirmPasswordEmailRequest-toDict)

- [`ConfirmPasswordEmailRequest$bytes()`](#method-ConfirmPasswordEmailRequest-bytes)

- [`ConfirmPasswordEmailRequest$fromReader()`](#method-ConfirmPasswordEmailRequest-fromReader)

- [`ConfirmPasswordEmailRequest$clone()`](#method-ConfirmPasswordEmailRequest-clone)

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

Initialize the ConfirmPasswordEmailRequest.

#### Usage

    ConfirmPasswordEmailRequest$new(code)

#### Arguments

- `code`:

  The confirmation code string.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    ConfirmPasswordEmailRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    ConfirmPasswordEmailRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    ConfirmPasswordEmailRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of ConfirmPasswordEmailRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ConfirmPasswordEmailRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
