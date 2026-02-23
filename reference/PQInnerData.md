# PQInnerData

Telegram API type PQInnerData

Telegram API type PQInnerData

## Details

PQInnerData Class

PQInnerData

This class has 4 constructors: - `PQInnerData()` -
[`PQInnerDataDc()`](https://romankyrychenko.github.io/telegramR/reference/PQInnerDataDc.md) -
[`PQInnerDataTemp()`](https://romankyrychenko.github.io/telegramR/reference/PQInnerDataTemp.md) -
[`PQInnerDataTempDc()`](https://romankyrychenko.github.io/telegramR/reference/PQInnerDataTempDc.md)

pq p q nonce server_nonce new_nonce dc expires_in slot date expires peer
cooldown_until_date

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PQInnerData`

## Public fields

- `CONSTRUCTOR_ID`:

  A unique identifier for the TL object.

- `SUBCLASS_OF_ID`:

  A unique identifier for the subclass of the TL object.

- `pq`:

  The \`pq\` value as a raw vector.

- `p`:

  The \`p\` value as a raw vector.

- `q`:

  The \`q\` value as a raw vector.

- `nonce`:

  The \`nonce\` value as an integer.

- `server_nonce`:

  The \`server_nonce\` value as an integer.

- `new_nonce`:

  The \`new_nonce\` value as an integer.

## Methods

### Public methods

- [`PQInnerData$new()`](#method-PQInnerData-new)

- [`PQInnerData$to_dict()`](#method-PQInnerData-to_dict)

- [`PQInnerData$bytes()`](#method-PQInnerData-bytes)

- [`PQInnerData$clone()`](#method-PQInnerData-clone)

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

    PQInnerData$new(pq, p, q, nonce, server_nonce, new_nonce)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PQInnerData$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PQInnerData$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PQInnerData$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PQInnerData`

## Public fields

- `CONSTRUCTOR_ID`:

  Integer. Constructor ID of the class.

- `SUBCLASS_OF_ID`:

  Integer. Subclass of ID of the parent class.

- `pq`:

  Integer. Subclass of ID of the parent class.

- `peer`:

  Object. Peer where the story is from.

- `id`:

  Integer. Story ID.

- `q`:

  Field.

- `via_mention`:

  Logical. Whether the story was sent via mention.

- `nonce`:

  Field.

- `story`:

  Object. Story object.

- `server_nonce`:

  Field.

- `new_nonce`:

  Logical. New nonce for the story.

## Active bindings

- `peer`:

  Object. Peer where the story is from.

- `id`:

  Integer. Story ID.

- `via_mention`:

  Logical. Whether the story was sent via mention.

- `story`:

  Object. Story object.

## Methods

### Public methods

- [`PQInnerData$new()`](#method-PQInnerData-new)

- [`PQInnerData$to_dict()`](#method-PQInnerData-to_dict)

- [`PQInnerData$bytes()`](#method-PQInnerData-bytes)

- [`PQInnerData$clone()`](#method-PQInnerData-clone)

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

    PQInnerData$new(pq, p, q, nonce, server_nonce, new_nonce)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PQInnerData$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PQInnerData$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PQInnerData$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
