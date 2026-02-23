# GetSavedMusicByIDRequest

Telegram API type GetSavedMusicByIDRequest

## Details

GetSavedMusicByIDRequest

Request to get saved music by document IDs for a user.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetSavedMusicByIDRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `documents`:

  Field.

## Methods

### Public methods

- [`GetSavedMusicByIDRequest$new()`](#method-GetSavedMusicByIDRequest-new)

- [`GetSavedMusicByIDRequest$resolve()`](#method-GetSavedMusicByIDRequest-resolve)

- [`GetSavedMusicByIDRequest$to_dict()`](#method-GetSavedMusicByIDRequest-to_dict)

- [`GetSavedMusicByIDRequest$bytes()`](#method-GetSavedMusicByIDRequest-bytes)

- [`GetSavedMusicByIDRequest$from_reader()`](#method-GetSavedMusicByIDRequest-from_reader)

- [`GetSavedMusicByIDRequest$clone()`](#method-GetSavedMusicByIDRequest-clone)

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

Request to get saved music by document IDs for a user.

#### Usage

    GetSavedMusicByIDRequest$new(id = NULL, documents = NULL)

#### Arguments

- `id`:

  TLInputUser or a representation accepted by get_input_user

- `documents`:

  List of TLInputDocument or representations accepted by
  get_input_document

------------------------------------------------------------------------

### Method `resolve()`

Converts the GetSavedMusicByIDRequest to a dictionary (list).

#### Usage

    GetSavedMusicByIDRequest$resolve(client, utils)

#### Arguments

- `client`:

  A client object to resolve user references.

- `utils`:

  A utils object with methods to get input user and document
  representations.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the GetSavedMusicByIDRequest to raw bytes.

#### Usage

    GetSavedMusicByIDRequest$to_dict()

#### Returns

A raw vector representing the GetSavedMusicByIDRequest.

------------------------------------------------------------------------

### Method `bytes()`

Initializes the GetSavedMusicByIDRequest.

#### Usage

    GetSavedMusicByIDRequest$bytes()

#### Returns

A raw vector representing the GetSavedMusicByIDRequest.

------------------------------------------------------------------------

### Method `from_reader()`

Request to get saved music by document IDs for a user.

#### Usage

    GetSavedMusicByIDRequest$from_reader(reader)

#### Arguments

- `reader`:

  A reader object to read the response.

#### Returns

A new instance of GetSavedMusicByIDRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetSavedMusicByIDRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
