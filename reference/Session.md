# Session

Telegram API type Session

## Details

R6 Class Representing a Session

This class defines the interface for session management, including
methods for handling data center information, authentication keys,
update states, and file caching.

## Methods

### Public methods

- [`Session$new()`](#method-Session-new)

- [`Session$.clone()`](#method-Session-.clone)

- [`Session$set_dc()`](#method-Session-set_dc)

- [`Session$get_update_state()`](#method-Session-get_update_state)

- [`Session$set_update_state()`](#method-Session-set_update_state)

- [`Session$get_update_states()`](#method-Session-get_update_states)

- [`Session$close()`](#method-Session-close)

- [`Session$save()`](#method-Session-save)

- [`Session$delete()`](#method-Session-delete)

- [`Session$process_entities()`](#method-Session-process_entities)

- [`Session$get_input_entity()`](#method-Session-get_input_entity)

- [`Session$cache_file()`](#method-Session-cache_file)

- [`Session$get_file()`](#method-Session-get_file)

- [`Session$clone()`](#method-Session-clone)

------------------------------------------------------------------------

### Method `new()`

Constructor for the Session class

#### Usage

    Session$new()

#### Returns

None.

------------------------------------------------------------------------

### Method `.clone()`

Creates a clone of this session object.

#### Usage

    Session$.clone(to_instance = NULL)

#### Arguments

- `to_instance`:

  An optional instance to clone into.

#### Returns

A cloned session object.

------------------------------------------------------------------------

### Method `set_dc()`

Sets the data center information.

#### Usage

    Session$set_dc(dc_id, server_address, port)

#### Arguments

- `dc_id`:

  `numeric` The data center ID.

- `server_address`:

  `character` The server address.

- `port`:

  `numeric` The port number.

#### Returns

None.

------------------------------------------------------------------------

### Method `get_update_state()`

Retrieves the update state for a given entity.

#### Usage

    Session$get_update_state(entity_id)

#### Arguments

- `entity_id`:

  `numeric` The ID of the entity.

#### Returns

`ANY` The update state or NULL if unknown.

------------------------------------------------------------------------

### Method `set_update_state()`

Sets the update state for a given entity.

#### Usage

    Session$set_update_state(entity_id, state)

#### Arguments

- `entity_id`:

  `numeric` The ID of the entity.

- `state`:

  `ANY` The update state to set.

------------------------------------------------------------------------

### Method `get_update_states()`

Retrieves all known update states.

#### Usage

    Session$get_update_states()

#### Returns

`list` A list of entity ID and update state pairs.

------------------------------------------------------------------------

### Method [`close()`](https://rdrr.io/r/base/connections.html)

Frees any used resources upon disconnection.

#### Usage

    Session$close()

#### Returns

None.

------------------------------------------------------------------------

### Method [`save()`](https://rdrr.io/r/base/save.html)

Persists session information to disk.

#### Usage

    Session$save()

#### Returns

None.

------------------------------------------------------------------------

### Method `delete()`

Deletes the session information from disk.

#### Usage

    Session$delete()

#### Returns

None.

------------------------------------------------------------------------

### Method `process_entities()`

Processes and saves relevant information from a TLObject.

#### Usage

    Session$process_entities(tlo)

#### Arguments

- `tlo`:

  `ANY` The TLObject or list to process.

#### Returns

None.

------------------------------------------------------------------------

### Method `get_input_entity()`

Converts a key into an InputPeer.

#### Usage

    Session$get_input_entity(key)

#### Arguments

- `key`:

  `ANY` The key to convert.

#### Returns

`ANY` The corresponding InputPeer.

------------------------------------------------------------------------

### Method `cache_file()`

Caches file information persistently.

#### Usage

    Session$cache_file(md5_digest, file_size, instance)

#### Arguments

- `md5_digest`:

  `character` The MD5 digest of the file.

- `file_size`:

  `numeric` The size of the file.

- `instance`:

  `ANY` The file instance to cache.

#### Returns

None.

------------------------------------------------------------------------

### Method `get_file()`

Retrieves cached file information.

#### Usage

    Session$get_file(md5_digest, file_size, cls)

#### Arguments

- `md5_digest`:

  `character` The MD5 digest of the file.

- `file_size`:

  `numeric` The size of the file.

- `cls`:

  `ANY` The class of the file to retrieve.

#### Returns

`ANY` The cached file instance or NULL if not found.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Session$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
