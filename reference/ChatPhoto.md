# ChatPhoto

Telegram API type ChatPhoto

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChatPhoto`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `photo_id`:

  Field.

- `dc_id`:

  Field.

- `has_video`:

  Field.

- `stripped_thumb`:

  Field.

## Methods

### Public methods

- [`ChatPhoto$new()`](#method-ChatPhoto-new)

- [`ChatPhoto$to_list()`](#method-ChatPhoto-to_list)

- [`ChatPhoto$bytes()`](#method-ChatPhoto-bytes)

- [`ChatPhoto$clone()`](#method-ChatPhoto-clone)

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

    ChatPhoto$new(photo_id, dc_id, has_video = NULL, stripped_thumb = NULL)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ChatPhoto$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ChatPhoto$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChatPhoto$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
