# MessageMediaWebPage

Telegram API type MessageMediaWebPage

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageMediaWebPage`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `webpage`:

  Field.

- `force_large_media`:

  Field.

- `force_small_media`:

  Field.

- `manual`:

  Field.

- `safe`:

  Field.

## Methods

### Public methods

- [`MessageMediaWebPage$new()`](#method-MessageMediaWebPage-new)

- [`MessageMediaWebPage$to_dict()`](#method-MessageMediaWebPage-to_dict)

- [`MessageMediaWebPage$bytes()`](#method-MessageMediaWebPage-bytes)

- [`MessageMediaWebPage$clone()`](#method-MessageMediaWebPage-clone)

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

    MessageMediaWebPage$new(
      webpage,
      force_large_media = NULL,
      force_small_media = NULL,
      manual = NULL,
      safe = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageMediaWebPage$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageMediaWebPage$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageMediaWebPage$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
