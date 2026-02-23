# PQInnerDataTemp

Telegram API type PQInnerDataTemp

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PQInnerDataTemp`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `pq`:

  Field.

- `p`:

  Field.

- `q`:

  Field.

- `nonce`:

  Field.

- `server_nonce`:

  Field.

- `new_nonce`:

  Field.

- `expires_in`:

  Field.

## Methods

### Public methods

- [`PQInnerDataTemp$new()`](#method-PQInnerDataTemp-new)

- [`PQInnerDataTemp$to_dict()`](#method-PQInnerDataTemp-to_dict)

- [`PQInnerDataTemp$bytes()`](#method-PQInnerDataTemp-bytes)

- [`PQInnerDataTemp$clone()`](#method-PQInnerDataTemp-clone)

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

    PQInnerDataTemp$new(pq, p, q, nonce, server_nonce, new_nonce, expires_in)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PQInnerDataTemp$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PQInnerDataTemp$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PQInnerDataTemp$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
