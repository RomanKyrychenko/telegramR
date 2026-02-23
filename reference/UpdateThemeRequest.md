# UpdateThemeRequest

R6 class representing an UpdateThemeRequest.

## Details

This class handles updating a theme.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdateThemeRequest`

## Methods

### Public methods

- [`UpdateThemeRequest$new()`](#method-UpdateThemeRequest-new)

- [`UpdateThemeRequest$resolve()`](#method-UpdateThemeRequest-resolve)

- [`UpdateThemeRequest$toDict()`](#method-UpdateThemeRequest-toDict)

- [`UpdateThemeRequest$bytes()`](#method-UpdateThemeRequest-bytes)

- [`UpdateThemeRequest$fromReader()`](#method-UpdateThemeRequest-fromReader)

- [`UpdateThemeRequest$clone()`](#method-UpdateThemeRequest-clone)

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

Initialize the UpdateThemeRequest.

#### Usage

    UpdateThemeRequest$new(
      format,
      theme,
      slug = NULL,
      title = NULL,
      document = NULL,
      settings = NULL
    )

#### Arguments

- `format`:

  The format string.

- `theme`:

  The input theme.

- `slug`:

  Optional slug string.

- `title`:

  Optional title string.

- `document`:

  Optional input document.

- `settings`:

  Optional list of input theme settings.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the document using client and utils.

#### Usage

    UpdateThemeRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    UpdateThemeRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    UpdateThemeRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    UpdateThemeRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of UpdateThemeRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateThemeRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
