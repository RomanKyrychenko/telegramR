# MsgNewDetailedInfo

Telegram API type MsgNewDetailedInfo

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MsgNewDetailedInfo`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `answer_msg_id`:

  Field.

- `byte_data`:

  Field.

- `status`:

  Field.

## Methods

### Public methods

- [`MsgNewDetailedInfo$new()`](#method-MsgNewDetailedInfo-new)

- [`MsgNewDetailedInfo$to_dict()`](#method-MsgNewDetailedInfo-to_dict)

- [`MsgNewDetailedInfo$bytes()`](#method-MsgNewDetailedInfo-bytes)

- [`MsgNewDetailedInfo$clone()`](#method-MsgNewDetailedInfo-clone)

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

    MsgNewDetailedInfo$new(answer_msg_id, byte_data, status)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MsgNewDetailedInfo$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MsgNewDetailedInfo$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MsgNewDetailedInfo$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
