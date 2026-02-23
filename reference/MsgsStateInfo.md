# MsgsStateInfo

Telegram API type MsgsStateInfo

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MsgsStateInfo`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `req_msg_id`:

  Field.

- `info`:

  Field.

## Methods

### Public methods

- [`MsgsStateInfo$new()`](#method-MsgsStateInfo-new)

- [`MsgsStateInfo$to_dict()`](#method-MsgsStateInfo-to_dict)

- [`MsgsStateInfo$bytes()`](#method-MsgsStateInfo-bytes)

- [`MsgsStateInfo$clone()`](#method-MsgsStateInfo-clone)

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

    MsgsStateInfo$new(req_msg_id, info)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MsgsStateInfo$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MsgsStateInfo$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MsgsStateInfo$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
