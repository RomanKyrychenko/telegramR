# MTProtoPlainSender

Telegram API type MTProtoPlainSender

## Details

This module contains the class used to communicate with Telegram's
servers in plain text, when no authorization key has been created yet.

## Methods

### Public methods

- [`MTProtoPlainSender$new()`](#method-MTProtoPlainSender-new)

- [`MTProtoPlainSender$send()`](#method-MTProtoPlainSender-send)

- [`MTProtoPlainSender$clone()`](#method-MTProtoPlainSender-clone)

------------------------------------------------------------------------

### Method `new()`

Initializes the MTProto plain sender.

#### Usage

    MTProtoPlainSender$new(connection, loggers = NULL)

#### Arguments

- `connection`:

  the Connection to be used.

- `loggers`:

  Optional loggers map.

------------------------------------------------------------------------

### Method `send()`

Sends and receives the result for the given request.

#### Usage

    MTProtoPlainSender$send(request)

#### Arguments

- `request`:

  The request to send.

#### Returns

The response object.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MTProtoPlainSender$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
