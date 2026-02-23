# CodeSettings

Telegram API type CodeSettings

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `CodeSettings`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `allow_flashcall`:

  Field.

- `current_number`:

  Field.

- `allow_app_hash`:

  Field.

- `allow_missed_call`:

  Field.

- `allow_firebase`:

  Field.

- `unknown_number`:

  Field.

- `logout_tokens`:

  Field.

- `token`:

  Field.

- `app_sandbox`:

  Field.

## Methods

### Public methods

- [`CodeSettings$new()`](#method-CodeSettings-new)

- [`CodeSettings$to_list()`](#method-CodeSettings-to_list)

- [`CodeSettings$clone()`](#method-CodeSettings-clone)

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
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    CodeSettings$new(
      allow_flashcall = NULL,
      current_number = NULL,
      allow_app_hash = NULL,
      allow_missed_call = NULL,
      allow_firebase = NULL,
      unknown_number = NULL,
      logout_tokens = NULL,
      token = NULL,
      app_sandbox = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    CodeSettings$to_list()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CodeSettings$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
