# SecureFile

Telegram API type SecureFile

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `SecureFile`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `access_hash`:

  Field.

- `size`:

  Field.

- `dc_id`:

  Field.

- `date`:

  Field.

- `file_hash`:

  Field.

- `secret`:

  Field.

## Methods

### Public methods

- [`SecureFile$new()`](#method-SecureFile-new)

- [`SecureFile$to_dict()`](#method-SecureFile-to_dict)

- [`SecureFile$bytes()`](#method-SecureFile-bytes)

- [`SecureFile$clone()`](#method-SecureFile-clone)

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
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    SecureFile$new(
      id = NULL,
      access_hash = NULL,
      size = NULL,
      dc_id = NULL,
      date = NULL,
      file_hash = NULL,
      secret = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    SecureFile$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    SecureFile$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SecureFile$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
