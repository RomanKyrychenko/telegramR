# SaveMusicRequest

R6 class representing a SaveMusicRequest.

## Details

This class handles saving or unsaving music with an optional after ID.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SaveMusicRequest`

## Methods

### Public methods

- [`SaveMusicRequest$new()`](#method-SaveMusicRequest-new)

- [`SaveMusicRequest$resolve()`](#method-SaveMusicRequest-resolve)

- [`SaveMusicRequest$toDict()`](#method-SaveMusicRequest-toDict)

- [`SaveMusicRequest$bytes()`](#method-SaveMusicRequest-bytes)

- [`SaveMusicRequest$fromReader()`](#method-SaveMusicRequest-fromReader)

- [`SaveMusicRequest$clone()`](#method-SaveMusicRequest-clone)

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

Initialize the SaveMusicRequest.

#### Usage

    SaveMusicRequest$new(id, unsave = NULL, afterId = NULL)

#### Arguments

- `id`:

  The input document ID.

- `unsave`:

  Optional boolean indicating if to unsave.

- `afterId`:

  Optional input document for after ID.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the ID and after ID using client and utils.

#### Usage

    SaveMusicRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    SaveMusicRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    SaveMusicRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    SaveMusicRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of SaveMusicRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SaveMusicRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
