# GetSavedMusicRequest

Telegram API type GetSavedMusicRequest

## Details

GetSavedMusicRequest

Request to get saved music for a user.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetSavedMusicRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `offset`:

  Field.

- `limit`:

  Field.

- `hash`:

  Field.

## Methods

### Public methods

- [`GetSavedMusicRequest$new()`](#method-GetSavedMusicRequest-new)

- [`GetSavedMusicRequest$resolve()`](#method-GetSavedMusicRequest-resolve)

- [`GetSavedMusicRequest$to_dict()`](#method-GetSavedMusicRequest-to_dict)

- [`GetSavedMusicRequest$bytes()`](#method-GetSavedMusicRequest-bytes)

- [`GetSavedMusicRequest$from_reader()`](#method-GetSavedMusicRequest-from_reader)

- [`GetSavedMusicRequest$clone()`](#method-GetSavedMusicRequest-clone)

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

Request to get saved music for a user.

#### Usage

    GetSavedMusicRequest$new(id = NULL, offset = NULL, limit = NULL, hash = NULL)

#### Arguments

- `id`:

  TLInputUser or a representation accepted by get_input_user

- `offset`:

  Integer offset for pagination.

- `limit`:

  Integer limit for the number of items to retrieve.

- `hash`:

  Integer64 hash for caching purposes (may be represented as numeric in
  R

------------------------------------------------------------------------

### Method `resolve()`

Converts the GetSavedMusicRequest to a dictionary (list).

#### Usage

    GetSavedMusicRequest$resolve(client, utils)

#### Arguments

- `client`:

  A client object to resolve user references.

- `utils`:

  A utils object with methods to get input user representations.

#### Returns

A list representation of the GetSavedMusicRequest.

------------------------------------------------------------------------

### Method `to_dict()`

Resolves the id field using the provided client and utils.

#### Usage

    GetSavedMusicRequest$to_dict()

#### Returns

A raw vector representing the GetSavedMusicRequest.

------------------------------------------------------------------------

### Method `bytes()`

Converts the GetSavedMusicRequest to raw bytes.

#### Usage

    GetSavedMusicRequest$bytes()

#### Returns

A raw vector representing the GetSavedMusicRequest.

------------------------------------------------------------------------

### Method `from_reader()`

Initializes the GetSavedMusicRequest.

#### Usage

    GetSavedMusicRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object to read the response.

#### Returns

A new instance of GetSavedMusicRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetSavedMusicRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
