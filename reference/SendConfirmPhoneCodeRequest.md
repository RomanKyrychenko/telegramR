# SendConfirmPhoneCodeRequest

R6 class representing a SendConfirmPhoneCodeRequest.

## Details

This class handles sending a confirm phone code request with hash and
settings.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SendConfirmPhoneCodeRequest`

## Methods

### Public methods

- [`SendConfirmPhoneCodeRequest$new()`](#method-SendConfirmPhoneCodeRequest-new)

- [`SendConfirmPhoneCodeRequest$toDict()`](#method-SendConfirmPhoneCodeRequest-toDict)

- [`SendConfirmPhoneCodeRequest$bytes()`](#method-SendConfirmPhoneCodeRequest-bytes)

- [`SendConfirmPhoneCodeRequest$fromReader()`](#method-SendConfirmPhoneCodeRequest-fromReader)

- [`SendConfirmPhoneCodeRequest$clone()`](#method-SendConfirmPhoneCodeRequest-clone)

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

Initialize the SendConfirmPhoneCodeRequest.

#### Usage

    SendConfirmPhoneCodeRequest$new(hash, settings)

#### Arguments

- `hash`:

  The hash string.

- `settings`:

  The code settings object.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    SendConfirmPhoneCodeRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    SendConfirmPhoneCodeRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    SendConfirmPhoneCodeRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of SendConfirmPhoneCodeRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SendConfirmPhoneCodeRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
