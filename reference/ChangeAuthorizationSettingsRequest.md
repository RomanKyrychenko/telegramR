# ChangeAuthorizationSettingsRequest

R6 class representing a ChangeAuthorizationSettingsRequest.

## Details

This class handles changing authorization settings with hash and
optional flags for confirmed, encrypted requests disabled, and call
requests disabled.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ChangeAuthorizationSettingsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`ChangeAuthorizationSettingsRequest$new()`](#method-ChangeAuthorizationSettingsRequest-new)

- [`ChangeAuthorizationSettingsRequest$toDict()`](#method-ChangeAuthorizationSettingsRequest-toDict)

- [`ChangeAuthorizationSettingsRequest$bytes()`](#method-ChangeAuthorizationSettingsRequest-bytes)

- [`ChangeAuthorizationSettingsRequest$fromReader()`](#method-ChangeAuthorizationSettingsRequest-fromReader)

- [`ChangeAuthorizationSettingsRequest$clone()`](#method-ChangeAuthorizationSettingsRequest-clone)

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

Initialize the ChangeAuthorizationSettingsRequest.

#### Usage

    ChangeAuthorizationSettingsRequest$new(
      hash,
      confirmed = NULL,
      encryptedRequestsDisabled = NULL,
      callRequestsDisabled = NULL
    )

#### Arguments

- `hash`:

  The hash value.

- `confirmed`:

  Optional boolean indicating if confirmed.

- `encryptedRequestsDisabled`:

  Optional boolean indicating if encrypted requests are disabled.

- `callRequestsDisabled`:

  Optional boolean indicating if call requests are disabled.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    ChangeAuthorizationSettingsRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    ChangeAuthorizationSettingsRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    ChangeAuthorizationSettingsRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of ChangeAuthorizationSettingsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChangeAuthorizationSettingsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
