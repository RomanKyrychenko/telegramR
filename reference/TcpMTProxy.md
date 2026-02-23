# TcpMTProxy

Connector for MTProxy, handling proxy connections and secret
normalization.

## Public fields

- `secret`:

  The MTProxy secret.

- `dc_id`:

  The data center identifier.

- `reader`:

  The reader object.

- `writer`:

  The writer object.

- `loggers`:

  Optional loggers.

- `packet_codec`:

  The packet codec used for this connection.

## Methods

### Public methods

- [`TcpMTProxy$new()`](#method-TcpMTProxy-new)

- [`TcpMTProxy$connect()`](#method-TcpMTProxy-connect)

- [`TcpMTProxy$clone()`](#method-TcpMTProxy-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize TcpMTProxy.

#### Usage

    TcpMTProxy$new(ip, port, dc_id, loggers = NULL, proxy = NULL)

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

### Method `connect()`

Asynchronously connect to the proxy.

#### Usage

    TcpMTProxy$connect(timeout = NULL, ssl = NULL)

#### Arguments

- `timeout`:

  Timeout value in seconds.

- `ssl`:

  Logical indicating whether to use SSL.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TcpMTProxy$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
