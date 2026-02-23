# InputMediaUploadedPhoto

Telegram API type InputMediaUploadedPhoto

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputMediaUploadedPhoto`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `file`:

  Field.

- `spoiler`:

  Field.

- `stickers`:

  Field.

- `ttl_seconds`:

  Field.

## Methods

### Public methods

- [`InputMediaUploadedPhoto$new()`](#method-InputMediaUploadedPhoto-new)

- [`InputMediaUploadedPhoto$to_dict()`](#method-InputMediaUploadedPhoto-to_dict)

- [`InputMediaUploadedPhoto$bytes()`](#method-InputMediaUploadedPhoto-bytes)

- [`InputMediaUploadedPhoto$clone()`](#method-InputMediaUploadedPhoto-clone)

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

    InputMediaUploadedPhoto$new(
      file,
      spoiler = NULL,
      stickers = NULL,
      ttl_seconds = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputMediaUploadedPhoto$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputMediaUploadedPhoto$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputMediaUploadedPhoto$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
