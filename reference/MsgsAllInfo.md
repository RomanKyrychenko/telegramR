# MsgsAllInfo

Telegram API type MsgsAllInfo

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MsgsAllInfo`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `msg_ids`:

  Field.

- `info`:

  Field.

## Methods

### Public methods

- [`MsgsAllInfo$new()`](#method-MsgsAllInfo-new)

- [`MsgsAllInfo$to_dict()`](#method-MsgsAllInfo-to_dict)

- [`MsgsAllInfo$bytes()`](#method-MsgsAllInfo-bytes)

- [`MsgsAllInfo$clone()`](#method-MsgsAllInfo-clone)

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

    MsgsAllInfo$new(msg_ids, info)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MsgsAllInfo$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MsgsAllInfo$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MsgsAllInfo$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
