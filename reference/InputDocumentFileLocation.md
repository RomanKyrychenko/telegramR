# InputDocumentFileLocation

Telegram API type InputDocumentFileLocation

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputDocumentFileLocation`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `access_hash`:

  Field.

- `file_reference`:

  Field.

- `thumb_size`:

  Field.

## Methods

### Public methods

- [`InputDocumentFileLocation$new()`](#method-InputDocumentFileLocation-new)

- [`InputDocumentFileLocation$to_list()`](#method-InputDocumentFileLocation-to_list)

- [`InputDocumentFileLocation$bytes()`](#method-InputDocumentFileLocation-bytes)

- [`InputDocumentFileLocation$clone()`](#method-InputDocumentFileLocation-clone)

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

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InputDocumentFileLocation$new(id, access_hash, file_reference, thumb_size)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InputDocumentFileLocation$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputDocumentFileLocation$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputDocumentFileLocation$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
