# BankCardOpenUrl

Telegram API type BankCardOpenUrl

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BankCardOpenUrl`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `url`:

  Field.

- `name`:

  Field.

## Methods

### Public methods

- [`BankCardOpenUrl$new()`](#method-BankCardOpenUrl-new)

- [`BankCardOpenUrl$to_dict()`](#method-BankCardOpenUrl-to_dict)

- [`BankCardOpenUrl$bytes()`](#method-BankCardOpenUrl-bytes)

- [`BankCardOpenUrl$clone()`](#method-BankCardOpenUrl-clone)

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

Initializes the BankCardOpenUrl with the given parameters.

#### Usage

    BankCardOpenUrl$new(url, name)

#### Arguments

- `url`:

  A string representing the URL.

- `name`:

  A string representing the name.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BankCardOpenUrl object to a list (dictionary).

#### Usage

    BankCardOpenUrl$to_dict()

#### Returns

A list representation of the BankCardOpenUrl object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BankCardOpenUrl object to bytes.

#### Usage

    BankCardOpenUrl$bytes()

#### Returns

A raw vector representing the serialized bytes of the BankCardOpenUrl
object. Reads a BankCardOpenUrl object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BankCardOpenUrl$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
