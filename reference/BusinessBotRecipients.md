# BusinessBotRecipients

Telegram API type BusinessBotRecipients

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BusinessBotRecipients`

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

- `exclude_users`:

  Field.

## Methods

### Public methods

- [`BusinessBotRecipients$new()`](#method-BusinessBotRecipients-new)

- [`BusinessBotRecipients$to_dict()`](#method-BusinessBotRecipients-to_dict)

- [`BusinessBotRecipients$clone()`](#method-BusinessBotRecipients-clone)

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

    BusinessBotRecipients$new(
      existing_chats = NULL,
      new_chats = NULL,
      contacts = NULL,
      non_contacts = NULL,
      exclude_selected = NULL,
      users = NULL,
      exclude_users = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    BusinessBotRecipients$to_dict()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BusinessBotRecipients$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
