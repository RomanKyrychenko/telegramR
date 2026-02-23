# SetAuthorizationTTLRequest

R6 class representing a SetAuthorizationTTLRequest.

## Details

This class handles setting the authorization TTL in days.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SetAuthorizationTTLRequest`

## Methods

### Public methods

- [`SetAuthorizationTTLRequest$new()`](#method-SetAuthorizationTTLRequest-new)

- [`SetAuthorizationTTLRequest$toDict()`](#method-SetAuthorizationTTLRequest-toDict)

- [`SetAuthorizationTTLRequest$bytes()`](#method-SetAuthorizationTTLRequest-bytes)

- [`SetAuthorizationTTLRequest$fromReader()`](#method-SetAuthorizationTTLRequest-fromReader)

- [`SetAuthorizationTTLRequest$clone()`](#method-SetAuthorizationTTLRequest-clone)

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

Initialize the SetAuthorizationTTLRequest.

#### Usage

    SetAuthorizationTTLRequest$new(authorizationTtlDays)

#### Arguments

- `authorizationTtlDays`:

  The authorization TTL in days.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    SetAuthorizationTTLRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    SetAuthorizationTTLRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    SetAuthorizationTTLRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of SetAuthorizationTTLRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetAuthorizationTTLRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
