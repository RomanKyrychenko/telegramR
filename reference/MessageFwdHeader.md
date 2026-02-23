# MessageFwdHeader

Telegram API type MessageFwdHeader

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageFwdHeader`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `date`:

  Field.

- `imported`:

  Field.

- `saved_out`:

  Field.

- `from_id`:

  Field.

- `from_name`:

  Field.

- `channel_post`:

  Field.

- `post_author`:

  Field.

- `saved_frompeer`:

  Field.

- `saved_from_msg_id`:

  Field.

- `saved_from_id`:

  Field.

- `saved_from_name`:

  Field.

- `saved_date`:

  Field.

- `psa_type`:

  Field.

## Methods

### Public methods

- [`MessageFwdHeader$new()`](#method-MessageFwdHeader-new)

- [`MessageFwdHeader$to_dict()`](#method-MessageFwdHeader-to_dict)

- [`MessageFwdHeader$bytes()`](#method-MessageFwdHeader-bytes)

- [`MessageFwdHeader$clone()`](#method-MessageFwdHeader-clone)

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

    MessageFwdHeader$new(
      date = NULL,
      imported = NULL,
      saved_out = NULL,
      from_id = NULL,
      from_name = NULL,
      channel_post = NULL,
      post_author = NULL,
      saved_frompeer = NULL,
      saved_from_msg_id = NULL,
      saved_from_id = NULL,
      saved_from_name = NULL,
      saved_date = NULL,
      psa_type = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageFwdHeader$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageFwdHeader$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageFwdHeader$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
