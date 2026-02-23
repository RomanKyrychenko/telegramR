# Connection Class

The Connection class wraps asynchronous socket connections. Subclasses
implement different transport modes by exposing a simple interface for
sending and receiving complete data payloads.

The only error raised from send and receive methods is ConnectionError,
thrown when attempting to send on a disconnected client.

## Details

Connection Module

This module provides connection handling for Telegram API
communications. It relies on the future package for asynchronous
operations and R6 for object-oriented programming.

## Public fields

- `packet_codec`:

  The packet codec class to use for this connection.

## Methods

### Public methods

- [`Connection$new()`](#method-Connection-new)

- [`Connection$to_string()`](#method-Connection-to_string)

- [`Connection$connect()`](#method-Connection-connect)

- [`Connection$disconnect()`](#method-Connection-disconnect)

- [`Connection$send()`](#method-Connection-send)

- [`Connection$recv()`](#method-Connection-recv)

- [`Connection$is_connected()`](#method-Connection-is_connected)

- [`Connection$clone()`](#method-Connection-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a new Connection instance.

#### Usage

    Connection$new(
      ip,
      port,
      dc_id,
      proxy = NULL,
      local_addr = NULL,
      loggers = NULL
    )

#### Arguments

- `ip`:

  A character string with the IP address.

- `port`:

  A numeric port number.

- `dc_id`:

  A numeric data center ID.

- `proxy`:

  Optional proxy configuration.

- `local_addr`:

  Optional local address as character or vector.

- `loggers`:

  A list of logger objects.

------------------------------------------------------------------------

### Method `to_string()`

Human-readable connection descriptor.

#### Usage

    Connection$to_string()

#### Returns

Character string with endpoint and DC id.

------------------------------------------------------------------------

### Method `connect()`

Connect to the server.

#### Usage

    Connection$connect(timeout = NULL, ssl = NULL)

#### Arguments

- `timeout`:

  Connection timeout in seconds.

- `ssl`:

  SSL configuration.

#### Returns

A promise resolving when connected.

------------------------------------------------------------------------

### Method `disconnect()`

Disconnect from the server and clear pending messages.

#### Usage

    Connection$disconnect()

#### Returns

A promise resolving when disconnected.

------------------------------------------------------------------------

### Method `send()`

Send data through the connection.

#### Usage

    Connection$send(data)

#### Arguments

- `data`:

  The data to be sent.

#### Returns

A promise that resolves when data is queued.

------------------------------------------------------------------------

### Method `recv()`

Receive data from the connection.

#### Usage

    Connection$recv()

#### Returns

A promise resolving with the received data.

------------------------------------------------------------------------

### Method `is_connected()`

Return transport connectivity state.

#### Usage

    Connection$is_connected()

#### Returns

TRUE if underlying transport is marked connected.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Connection$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
