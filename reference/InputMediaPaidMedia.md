# InputMediaPaidMedia

Telegram API type InputMediaPaidMedia

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputMediaPaidMedia`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `stars_amount`:

  Field.

- `extended_media`:

  Field.

- `payload`:

  Field.

## Methods

### Public methods

- [`InputMediaPaidMedia$new()`](#method-InputMediaPaidMedia-new)

- [`InputMediaPaidMedia$to_dict()`](#method-InputMediaPaidMedia-to_dict)

- [`InputMediaPaidMedia$bytes()`](#method-InputMediaPaidMedia-bytes)

- [`InputMediaPaidMedia$clone()`](#method-InputMediaPaidMedia-clone)

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

    InputMediaPaidMedia$new(stars_amount, extended_media, payload = NULL)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputMediaPaidMedia$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputMediaPaidMedia$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputMediaPaidMedia$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
