# DcOption

Telegram API type DcOption

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `DcOption`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `ip_address`:

  Field.

- `port`:

  Field.

- `ipv6`:

  Field.

- `media_only`:

  Field.

- `tcpo_only`:

  Field.

- `cdn`:

  Field.

- `static`:

  Field.

- `this_port_only`:

  Field.

- `secret`:

  Field.

## Methods

### Public methods

- [`DcOption$new()`](#method-DcOption-new)

- [`DcOption$to_dict()`](#method-DcOption-to_dict)

- [`DcOption$bytes()`](#method-DcOption-bytes)

- [`DcOption$clone()`](#method-DcOption-clone)

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

    DcOption$new(
      id,
      ip_address,
      port,
      ipv6 = NULL,
      media_only = NULL,
      tcpo_only = NULL,
      cdn = NULL,
      static = NULL,
      this_port_only = NULL,
      secret = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    DcOption$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    DcOption$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DcOption$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
