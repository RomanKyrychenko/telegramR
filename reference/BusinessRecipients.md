# BusinessRecipients

Telegram API type BusinessRecipients

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BusinessRecipients`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `existing_chats`:

  Field.

- `new_chats`:

  Field.

- `contacts`:

  Field.

- `non_contacts`:

  Field.

- `exclude_selected`:

  Field.

- `users`:

  Field.

## Methods

### Public methods

- [`BusinessRecipients$new()`](#method-BusinessRecipients-new)

- [`BusinessRecipients$to_dict()`](#method-BusinessRecipients-to_dict)

- [`BusinessRecipients$clone()`](#method-BusinessRecipients-clone)

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

    BusinessRecipients$new(
      existing_chats = NULL,
      new_chats = NULL,
      contacts = NULL,
      non_contacts = NULL,
      exclude_selected = NULL,
      users = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    BusinessRecipients$to_dict()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BusinessRecipients$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
