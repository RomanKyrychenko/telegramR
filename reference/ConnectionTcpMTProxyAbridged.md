# ConnectionTcpMTProxyAbridged

Connects to an MTProxy server using the abridged protocol.

## Super class

[`telegramR::TcpMTProxy`](https://romankyrychenko.github.io/telegramR/reference/TcpMTProxy.md)
-\> `ConnectionTcpMTProxyAbridged`

## Public fields

- `packet_codec`:

  The packet codec used for this connection.

## Methods

### Public methods

- [`ConnectionTcpMTProxyAbridged$new()`](#method-ConnectionTcpMTProxyAbridged-new)

- [`ConnectionTcpMTProxyAbridged$clone()`](#method-ConnectionTcpMTProxyAbridged-clone)

Inherited methods

- [`telegramR::TcpMTProxy$connect()`](https://romankyrychenko.github.io/telegramR/reference/TcpMTProxy.html#method-connect)

------------------------------------------------------------------------

### Method `new()`

Initialize connection using the abridged protocol.

#### Usage

    ConnectionTcpMTProxyAbridged$new(ip, port, dc_id, loggers = NULL, proxy = NULL)

#### Arguments

- `ip`:

  IP address as character.

- `port`:

  Port number as integer.

- `dc_id`:

  Data center identifier as integer.

- `loggers`:

  Optional logger.

- `proxy`:

  A list containing proxy_host, proxy_port, and secret.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ConnectionTcpMTProxyAbridged$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
