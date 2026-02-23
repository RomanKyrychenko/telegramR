# PQInnerDataDc

Telegram API type PQInnerDataDc

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PQInnerDataDc`

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

- `dc`:

  Field.

## Methods

### Public methods

- [`PQInnerDataDc$new()`](#method-PQInnerDataDc-new)

- [`PQInnerDataDc$to_dict()`](#method-PQInnerDataDc-to_dict)

- [`PQInnerDataDc$bytes()`](#method-PQInnerDataDc-bytes)

- [`PQInnerDataDc$clone()`](#method-PQInnerDataDc-clone)

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

    PQInnerDataDc$new(pq, p, q, nonce, server_nonce, new_nonce, dc)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PQInnerDataDc$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PQInnerDataDc$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PQInnerDataDc$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
