# MTProtoSender

Telegram API type MTProtoSender

## Details

MTProto Mobile Protocol sender

This class is responsible for wrapping requests into TLMessage objects,
sending them over the network and receiving them in a safe manner.
Automatic reconnection due to temporary network issues is handled by
this class, including retry of messages that could not be sent
successfully. A new authorization key will be generated on connection if
no other key exists yet.

## Public fields

- `auth_key`:

  Authentication key

- `time_offset`:

  Time offset with server

## Methods

### Public methods

- [`MTProtoSender$new()`](#method-MTProtoSender-new)

- [`MTProtoSender$connect()`](#method-MTProtoSender-connect)

- [`MTProtoSender$is_connected()`](#method-MTProtoSender-is_connected)

- [`MTProtoSender$transport_connected()`](#method-MTProtoSender-transport_connected)

- [`MTProtoSender$disconnect()`](#method-MTProtoSender-disconnect)

- [`MTProtoSender$send()`](#method-MTProtoSender-send)

- [`MTProtoSender$disconnected()`](#method-MTProtoSender-disconnected)

- [`MTProtoSender$get_new_msg_id()`](#method-MTProtoSender-get_new_msg_id)

- [`MTProtoSender$set_auth_key_callback()`](#method-MTProtoSender-set_auth_key_callback)

- [`MTProtoSender$set_update_callback()`](#method-MTProtoSender-set_update_callback)

- [`MTProtoSender$update_time_offset()`](#method-MTProtoSender-update_time_offset)

- [`MTProtoSender$clone()`](#method-MTProtoSender-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a new MTProtoSender

#### Usage

    MTProtoSender$new(
      auth_key = NULL,
      retries = 5,
      delay = 1,
      auto_reconnect = TRUE,
      connect_timeout = NULL,
      auth_key_callback = NULL,
      updates_queue = NULL,
      auto_reconnect_callback = NULL
    )

#### Arguments

- `auth_key`:

  Authentication key

- `retries`:

  Number of retries for failed operations

- `delay`:

  Delay between retries in seconds

- `auto_reconnect`:

  Whether to automatically reconnect

- `connect_timeout`:

  Connection timeout in seconds

- `auth_key_callback`:

  Callback for auth key updates

- `updates_queue`:

  Queue for updates

- `auto_reconnect_callback`:

  Callback after reconnection

------------------------------------------------------------------------

### Method `connect()`

Connects to the specified given connection using the given auth key.

#### Usage

    MTProtoSender$connect(connection)

#### Arguments

- `connection`:

  Connection object to use

#### Returns

TRUE if connected successfully, FALSE otherwise

------------------------------------------------------------------------

### Method `is_connected()`

Check if user is connected

#### Usage

    MTProtoSender$is_connected()

#### Returns

TRUE if connected, FALSE otherwise

------------------------------------------------------------------------

### Method `transport_connected()`

Check if transport layer is connected

#### Usage

    MTProtoSender$transport_connected()

#### Returns

TRUE if transport connected, FALSE otherwise

------------------------------------------------------------------------

### Method `disconnect()`

Cleanly disconnects the instance from the network, cancels all pending
requests, and closes the send and receive loops.

#### Usage

    MTProtoSender$disconnect()

------------------------------------------------------------------------

### Method `send()`

Enqueues the given request to be sent. Its send state will be saved
until a response arrives, and a future that will be resolved when the
response arrives will be returned.

#### Usage

    MTProtoSender$send(request, ordered = FALSE)

#### Arguments

- `request`:

  Request or list of requests to send

- `ordered`:

  Whether requests should be executed in order

#### Returns

Future or list of futures that will resolve with the response

------------------------------------------------------------------------

### Method `disconnected()`

Get future that resolves when connection to Telegram ends

#### Usage

    MTProtoSender$disconnected()

#### Returns

Future that resolves on disconnection

------------------------------------------------------------------------

### Method `get_new_msg_id()`

Generate a new unique message ID

#### Usage

    MTProtoSender$get_new_msg_id()

#### Returns

New message ID

------------------------------------------------------------------------

### Method `set_auth_key_callback()`

Set the callback invoked when the auth key changes

#### Usage

    MTProtoSender$set_auth_key_callback(callback)

#### Arguments

- `callback`:

  Function accepting an AuthKey object

------------------------------------------------------------------------

### Method `set_update_callback()`

Set the callback invoked when updates are received

#### Usage

    MTProtoSender$set_update_callback(callback)

#### Arguments

- `callback`:

  Function accepting an update object

------------------------------------------------------------------------

### Method `update_time_offset()`

Update time offset based on a correct message ID

#### Usage

    MTProtoSender$update_time_offset(correct_msg_id)

#### Arguments

- `correct_msg_id`:

  Known valid message ID

#### Returns

Updated time offset Handle future salts Handle state forgotten
(MsgsStateReq and MsgResendReq) Handle MsgsAllInfo Handle destroy
session responses Handle destroy auth key responses

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MTProtoSender$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
