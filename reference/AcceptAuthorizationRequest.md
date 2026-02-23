# AcceptAuthorizationRequest

R6 class representing an AcceptAuthorizationRequest.

## Details

This class handles accepting authorization for a bot with specified bot
ID, scope, public key, value hashes, and credentials.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `AcceptAuthorizationRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`AcceptAuthorizationRequest$new()`](#method-AcceptAuthorizationRequest-new)

- [`AcceptAuthorizationRequest$toDict()`](#method-AcceptAuthorizationRequest-toDict)

- [`AcceptAuthorizationRequest$bytes()`](#method-AcceptAuthorizationRequest-bytes)

- [`AcceptAuthorizationRequest$fromReader()`](#method-AcceptAuthorizationRequest-fromReader)

- [`AcceptAuthorizationRequest$clone()`](#method-AcceptAuthorizationRequest-clone)

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

Initialize the AcceptAuthorizationRequest.

#### Usage

    AcceptAuthorizationRequest$new(
      botId,
      scope,
      publicKey,
      valueHashes,
      credentials
    )

#### Arguments

- `botId`:

  The bot ID as an integer.

- `scope`:

  The scope string.

- `publicKey`:

  The public key string.

- `valueHashes`:

  List of secure value hashes.

- `credentials`:

  The secure credentials encrypted.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    AcceptAuthorizationRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    AcceptAuthorizationRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    AcceptAuthorizationRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of AcceptAuthorizationRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AcceptAuthorizationRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
