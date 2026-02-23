# SavedPhoneContact

Telegram API type SavedPhoneContact

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `SavedPhoneContact`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `phone`:

  Field.

- `first_name`:

  Field.

- `last_name`:

  Field.

- `date`:

  Field.

## Methods

### Public methods

- [`SavedPhoneContact$new()`](#method-SavedPhoneContact-new)

- [`SavedPhoneContact$to_dict()`](#method-SavedPhoneContact-to_dict)

- [`SavedPhoneContact$bytes()`](#method-SavedPhoneContact-bytes)

- [`SavedPhoneContact$clone()`](#method-SavedPhoneContact-clone)

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

    SavedPhoneContact$new(
      phone = NULL,
      first_name = NULL,
      last_name = NULL,
      date = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    SavedPhoneContact$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    SavedPhoneContact$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SavedPhoneContact$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
