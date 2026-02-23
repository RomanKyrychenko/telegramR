# InputChatUploadedPhoto

Telegram API type InputChatUploadedPhoto

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputChatUploadedPhoto`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `file`:

  Field.

- `video`:

  Field.

- `video_start_ts`:

  Field.

- `video_emoji_markup`:

  Field.

## Methods

### Public methods

- [`InputChatUploadedPhoto$new()`](#method-InputChatUploadedPhoto-new)

- [`InputChatUploadedPhoto$to_dict()`](#method-InputChatUploadedPhoto-to_dict)

- [`InputChatUploadedPhoto$bytes()`](#method-InputChatUploadedPhoto-bytes)

- [`InputChatUploadedPhoto$clone()`](#method-InputChatUploadedPhoto-clone)

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

    InputChatUploadedPhoto$new(
      file = NULL,
      video = NULL,
      video_start_ts = NULL,
      video_emoji_markup = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputChatUploadedPhoto$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputChatUploadedPhoto$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputChatUploadedPhoto$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
