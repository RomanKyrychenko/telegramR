# ChatAdminRights

Telegram API type ChatAdminRights

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChatAdminRights`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `change_info`:

  Field.

- `post_messages`:

  Field.

- `edit_messages`:

  Field.

- `delete_messages`:

  Field.

- `ban_users`:

  Field.

- `invite_users`:

  Field.

- `pin_messages`:

  Field.

- `add_admins`:

  Field.

- `anonymous`:

  Field.

- `manage_call`:

  Field.

- `other`:

  Field.

- `manage_topics`:

  Field.

- `post_stories`:

  Field.

- `edit_stories`:

  Field.

- `delete_stories`:

  Field.

- `manage_direct_messages`:

  Field.

## Methods

### Public methods

- [`ChatAdminRights$new()`](#method-ChatAdminRights-new)

- [`ChatAdminRights$to_list()`](#method-ChatAdminRights-to_list)

- [`ChatAdminRights$bytes()`](#method-ChatAdminRights-bytes)

- [`ChatAdminRights$clone()`](#method-ChatAdminRights-clone)

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

    ChatAdminRights$new(
      change_info = NULL,
      post_messages = NULL,
      edit_messages = NULL,
      delete_messages = NULL,
      ban_users = NULL,
      invite_users = NULL,
      pin_messages = NULL,
      add_admins = NULL,
      anonymous = NULL,
      manage_call = NULL,
      other = NULL,
      manage_topics = NULL,
      post_stories = NULL,
      edit_stories = NULL,
      delete_stories = NULL,
      manage_direct_messages = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ChatAdminRights$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ChatAdminRights$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChatAdminRights$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
