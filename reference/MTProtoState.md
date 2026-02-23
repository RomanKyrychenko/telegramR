# MTProtoState

Telegram API type MTProtoState

## Details

MTProto protocol state management

## Public fields

- `auth_key`:

  Authentication key for encryption

- `time_offset`:

  Time offset between local and server time

- `salt`:

  Current server salt

- `id`:

  Current session ID

- `algo`:

  Field.

- `serialize`:

  Field.

- `raw`:

  Field.

- `algo`:

  Field.

- `serialize`:

  Field.

- `raw`:

  Field.

## Active bindings

- `algo`:

  Field.

- `serialize`:

  Field.

- `raw`:

  Field.

- `algo`:

  Field.

- `serialize`:

  Field.

- `raw`:

  Field.

## Methods

### Public methods

- [`MTProtoState$new()`](#method-MTProtoState-new)

- [`MTProtoState$reset()`](#method-MTProtoState-reset)

- [`MTProtoState$update_message_id()`](#method-MTProtoState-update_message_id)

- [`MTProtoState$write_data_as_message()`](#method-MTProtoState-write_data_as_message)

- [`MTProtoState$encrypt_message_data()`](#method-MTProtoState-encrypt_message_data)

- [`MTProtoState$decrypt_message_data()`](#method-MTProtoState-decrypt_message_data)

- [`MTProtoState$get_new_msg_id()`](#method-MTProtoState-get_new_msg_id)

- [`MTProtoState$update_time_offset()`](#method-MTProtoState-update_time_offset)

- [`MTProtoState$clone()`](#method-MTProtoState-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a new MTProto state

#### Usage

    MTProtoState$new(auth_key, loggers)

#### Arguments

- `auth_key`:

  Authentication key for encryption

- `loggers`:

  Logger objects

------------------------------------------------------------------------

### Method `reset()`

Reset the state

#### Usage

    MTProtoState$reset()

------------------------------------------------------------------------

### Method `update_message_id()`

Update message ID when time offset changes

#### Usage

    MTProtoState$update_message_id(message)

#### Arguments

- `message`:

  Message object to update

------------------------------------------------------------------------

### Method `write_data_as_message()`

Write a message containing given data into buffer

#### Usage

    MTProtoState$write_data_as_message(
      buffer,
      data,
      content_related,
      after_id = NULL
    )

#### Arguments

- `buffer`:

  Buffer to write to

- `data`:

  Data to include in the message

- `content_related`:

  Boolean indicating if message is content-related

- `after_id`:

  Optional message ID to invoke after

#### Returns

Message ID of the written message

------------------------------------------------------------------------

### Method `encrypt_message_data()`

Encrypt message data using current authorization key

#### Usage

    MTProtoState$encrypt_message_data(data)

#### Arguments

- `data`:

  Data to encrypt

#### Returns

Encrypted message data

------------------------------------------------------------------------

### Method `decrypt_message_data()`

Decrypt message data from server

#### Usage

    MTProtoState$decrypt_message_data(body)

#### Arguments

- `body`:

  Encrypted message body

#### Returns

Decrypted message or NULL if message should be ignored

------------------------------------------------------------------------

### Method `get_new_msg_id()`

Generate a new unique message ID

#### Usage

    MTProtoState$get_new_msg_id()

#### Returns

New message ID

------------------------------------------------------------------------

### Method `update_time_offset()`

Update time offset based on a correct message ID

#### Usage

    MTProtoState$update_time_offset(correct_msg_id)

#### Arguments

- `correct_msg_id`:

  Known valid message ID

#### Returns

Updated time offset

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MTProtoState$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
