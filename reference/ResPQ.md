# ResPQ

Telegram API type ResPQ

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ResPQ`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `nonce`:

  Field.

- `server_nonce`:

  Field.

- `pq`:

  Field.

- `server_public_key_fingerprints`:

  Field.

## Methods

### Public methods

- [`ResPQ$new()`](#method-ResPQ-new)

- [`ResPQ$to_dict()`](#method-ResPQ-to_dict)

- [`ResPQ$bytes()`](#method-ResPQ-bytes)

- [`ResPQ$clone()`](#method-ResPQ-clone)

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

    ResPQ$new(
      nonce = NULL,
      server_nonce = NULL,
      pq = NULL,
      server_public_key_fingerprints = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ResPQ$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ResPQ$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ResPQ$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
