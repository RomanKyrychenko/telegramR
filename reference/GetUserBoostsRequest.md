# GetUserBoostsRequest

Telegram API type GetUserBoostsRequest

## Details

GetUserBoostsRequest R6 class

Representation of the TL request "GetUserBoostsRequest".

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor ID for the request

- `SUBCLASS_OF_ID`:

  Subclass ID for the request

- `peer`:

  Input peer (object or identifier)

- `user_id`:

  Input user (object or identifier)

## Methods

### Public methods

- [`GetUserBoostsRequest$new()`](#method-GetUserBoostsRequest-new)

- [`GetUserBoostsRequest$resolve()`](#method-GetUserBoostsRequest-resolve)

- [`GetUserBoostsRequest$to_list()`](#method-GetUserBoostsRequest-to_list)

- [`GetUserBoostsRequest$bytes()`](#method-GetUserBoostsRequest-bytes)

- [`GetUserBoostsRequest$from_reader()`](#method-GetUserBoostsRequest-from_reader)

- [`GetUserBoostsRequest$clone()`](#method-GetUserBoostsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetUserBoostsRequest

#### Usage

    GetUserBoostsRequest$new(peer = NULL, user_id = NULL)

#### Arguments

- `peer`:

  input peer or identifier

- `user_id`:

  input user or identifier

#### Returns

self

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer and user_id using client/utils helpers

#### Usage

    GetUserBoostsRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object that provides get_input_entity

- `utils`:

  utils object that provides get_input_peer and get_input_user

#### Returns

self

------------------------------------------------------------------------

### Method `to_list()`

Convert request to list (dictionary)

#### Usage

    GetUserBoostsRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `bytes()`

Serialize to raw bytes

#### Usage

    GetUserBoostsRequest$bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Construct a new GetUserBoostsRequest from a reader

#### Usage

    GetUserBoostsRequest$from_reader(reader)

#### Arguments

- `reader`:

  reader object exposing tgread_object()

#### Returns

GetUserBoostsRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetUserBoostsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
