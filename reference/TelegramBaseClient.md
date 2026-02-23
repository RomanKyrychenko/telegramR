# Telegram Base Client

This class provides the core functionality for a Telegram client,
including connection management, session handling, and message
processing.

## Details

Abstract base class for telegram client implementation

## Public fields

- `use_ipv6`:

  Field.

- `proxy`:

  Field.

- `local_addr`:

  Field.

- `timeout`:

  Field.

- `request_retries`:

  Field.

- `connection_retries`:

  Field.

- `retry_delay`:

  Field.

- `auto_reconnect`:

  Field.

- `sequential_updates`:

  Field.

- `flood_sleep_threshold`:

  Field.

- `raise_last_call_error`:

  Field.

- `device_model`:

  Field.

- `system_version`:

  Field.

- `app_version`:

  Field.

- `lang_code`:

  Field.

- `system_lang_code`:

  Field.

- `base_logger`:

  Field.

- `receive_updates`:

  Field.

- `catch_up`:

  Field.

- `query`:

  Field.

- `auth_key_callback`:

  Field.

- `auto_reconnect_callback`:

  Field. Connect to Telegram

  Establishes a connection to Telegram servers

## Active bindings

- `use_ipv6`:

  Field.

- `proxy`:

  Field.

- `local_addr`:

  Field.

- `timeout`:

  Field.

- `request_retries`:

  Field.

- `connection_retries`:

  Field.

- `retry_delay`:

  Field.

- `auto_reconnect`:

  Field.

- `sequential_updates`:

  Field.

- `flood_sleep_threshold`:

  Field.

- `raise_last_call_error`:

  Field.

- `device_model`:

  Field.

- `system_version`:

  Field.

- `app_version`:

  Field.

- `lang_code`:

  Field.

- `system_lang_code`:

  Field.

- `base_logger`:

  Field.

- `receive_updates`:

  Field.

- `catch_up`:

  Field.

- `query`:

  Field.

- `auth_key_callback`:

  Field.

- `auto_reconnect_callback`:

  Field. Connect to Telegram

  Establishes a connection to Telegram servers

## Methods

### Public methods

- [`TelegramBaseClient$new()`](#method-TelegramBaseClient-new)

- [`TelegramBaseClient$connect()`](#method-TelegramBaseClient-connect)

- [`TelegramBaseClient$is_connected()`](#method-TelegramBaseClient-is_connected)

- [`TelegramBaseClient$disconnect()`](#method-TelegramBaseClient-disconnect)

- [`TelegramBaseClient$set_proxy()`](#method-TelegramBaseClient-set_proxy)

- [`TelegramBaseClient$get_version()`](#method-TelegramBaseClient-get_version)

- [`TelegramBaseClient$get_flood_sleep_threshold()`](#method-TelegramBaseClient-get_flood_sleep_threshold)

- [`TelegramBaseClient$set_flood_sleep_threshold()`](#method-TelegramBaseClient-set_flood_sleep_threshold)

- [`TelegramBaseClient$get_proxy()`](#method-TelegramBaseClient-get_proxy)

- [`TelegramBaseClient$switch_dc()`](#method-TelegramBaseClient-switch_dc)

- [`TelegramBaseClient$clone()`](#method-TelegramBaseClient-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a new Telegram client

#### Usage

    TelegramBaseClient$new(
      session,
      api_id,
      api_hash,
      connection = NULL,
      use_ipv6 = FALSE,
      proxy = NULL,
      local_addr = NULL,
      timeout = 10,
      request_retries = 5,
      connection_retries = 5,
      retry_delay = 1,
      auto_reconnect = TRUE,
      sequential_updates = FALSE,
      flood_sleep_threshold = 60,
      raise_last_call_error = FALSE,
      device_model = NULL,
      system_version = NULL,
      app_version = NULL,
      lang_code = "en",
      system_lang_code = "en",
      base_logger = NULL,
      receive_updates = TRUE,
      catch_up = FALSE,
      entity_cache_limit = 5000
    )

#### Arguments

- `session`:

  Session object or path to session file

- `api_id`:

  API ID from my.telegram.org

- `api_hash`:

  API hash from my.telegram.org

- `connection`:

  Connection class to use

- `use_ipv6`:

  Whether to connect through IPv6

- `proxy`:

  Proxy settings

- `local_addr`:

  Local address to bind to

- `timeout`:

  Connection timeout

- `request_retries`:

  How many times to retry requests

- `connection_retries`:

  How many times to retry connections

- `retry_delay`:

  Delay between retries

- `auto_reconnect`:

  Whether to automatically reconnect

- `sequential_updates`:

  Whether to process updates sequentially

- `flood_sleep_threshold`:

  Time in seconds to automatically sleep on flood wait errors

- `raise_last_call_error`:

  Whether to raise the last call error

- `device_model`:

  Device model to report

- `system_version`:

  System version to report

- `app_version`:

  App version to report

- `lang_code`:

  Language code

- `system_lang_code`:

  System language code

- `base_logger`:

  Base logger to use

- `receive_updates`:

  Whether to receive updates

- `catch_up`:

  Whether to catch up on missed updates

- `entity_cache_limit`:

  Maximum number of entities to keep in cache

------------------------------------------------------------------------

### Method `connect()`

#### Usage

    TelegramBaseClient$connect()

#### Returns

A future that resolves when connected Check if client is connected

------------------------------------------------------------------------

### Method `is_connected()`

#### Usage

    TelegramBaseClient$is_connected()

#### Returns

TRUE if connected, FALSE otherwise Disconnect from Telegram

Closes the connection to Telegram servers

------------------------------------------------------------------------

### Method `disconnect()`

#### Usage

    TelegramBaseClient$disconnect()

#### Returns

A future that resolves when disconnected Set proxy for the connection

------------------------------------------------------------------------

### Method `set_proxy()`

#### Usage

    TelegramBaseClient$set_proxy(proxy)

#### Arguments

- `proxy`:

  Proxy configuration Get client version

------------------------------------------------------------------------

### Method `get_version()`

#### Usage

    TelegramBaseClient$get_version()

#### Returns

Current client version Get the flood sleep threshold

------------------------------------------------------------------------

### Method `get_flood_sleep_threshold()`

#### Usage

    TelegramBaseClient$get_flood_sleep_threshold()

#### Returns

Current flood sleep threshold in seconds Set the flood sleep threshold

------------------------------------------------------------------------

### Method `set_flood_sleep_threshold()`

#### Usage

    TelegramBaseClient$set_flood_sleep_threshold(value)

#### Arguments

- `value`:

  New threshold in seconds

------------------------------------------------------------------------

### Method `get_proxy()`

#### Usage

    TelegramBaseClient$get_proxy()

------------------------------------------------------------------------

### Method `switch_dc()`

Switch the client to a different data center.

#### Usage

    TelegramBaseClient$switch_dc(new_dc)

#### Arguments

- `new_dc`:

  The new DC ID.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TelegramBaseClient$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
