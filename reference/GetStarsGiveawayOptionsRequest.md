# GetStarsGiveawayOptionsRequest

Represents a request to get stars giveaway options. Inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetStarsGiveawayOptionsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`GetStarsGiveawayOptionsRequest$to_dict()`](#method-GetStarsGiveawayOptionsRequest-to_dict)

- [`GetStarsGiveawayOptionsRequest$bytes()`](#method-GetStarsGiveawayOptionsRequest-bytes)

- [`GetStarsGiveawayOptionsRequest$from_reader()`](#method-GetStarsGiveawayOptionsRequest-from_reader)

- [`GetStarsGiveawayOptionsRequest$clone()`](#method-GetStarsGiveawayOptionsRequest-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    GetStarsGiveawayOptionsRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetStarsGiveawayOptionsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    GetStarsGiveawayOptionsRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetStarsGiveawayOptionsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetStarsGiveawayOptionsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
