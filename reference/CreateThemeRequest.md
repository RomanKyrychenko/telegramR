# CreateThemeRequest

R6 class representing a CreateThemeRequest.

## Details

This class handles creating a theme with specified slug, title, optional
document, and settings.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `CreateThemeRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`CreateThemeRequest$new()`](#method-CreateThemeRequest-new)

- [`CreateThemeRequest$resolve()`](#method-CreateThemeRequest-resolve)

- [`CreateThemeRequest$toDict()`](#method-CreateThemeRequest-toDict)

- [`CreateThemeRequest$bytes()`](#method-CreateThemeRequest-bytes)

- [`CreateThemeRequest$fromReader()`](#method-CreateThemeRequest-fromReader)

- [`CreateThemeRequest$clone()`](#method-CreateThemeRequest-clone)

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

------------------------------------------------------------------------

### Method `new()`

Initialize the CreateThemeRequest.

#### Usage

    CreateThemeRequest$new(slug, title, document = NULL, settings = NULL)

#### Arguments

- `slug`:

  The slug string.

- `title`:

  The title string.

- `document`:

  Optional input document.

- `settings`:

  Optional list of input theme settings.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the document using client and utils.

#### Usage

    CreateThemeRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    CreateThemeRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    CreateThemeRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    CreateThemeRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of CreateThemeRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CreateThemeRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
