# GetBoostsStatusRequest

Telegram API type GetBoostsStatusRequest

## Details

GetBoostsStatusRequest R6 class

Representation of the TL request "GetBoostsStatusRequest".

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor ID for the request

- `SUBCLASS_OF_ID`:

  Subclass ID for the request

- `peer`:

  Input peer (object or identifier)

## Methods

### Public methods

- [`GetBoostsStatusRequest$new()`](#method-GetBoostsStatusRequest-new)

- [`GetBoostsStatusRequest$resolve()`](#method-GetBoostsStatusRequest-resolve)

- [`GetBoostsStatusRequest$to_list()`](#method-GetBoostsStatusRequest-to_list)

- [`GetBoostsStatusRequest$bytes()`](#method-GetBoostsStatusRequest-bytes)

- [`GetBoostsStatusRequest$from_reader()`](#method-GetBoostsStatusRequest-from_reader)

- [`GetBoostsStatusRequest$clone()`](#method-GetBoostsStatusRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Create a new GetBoostsStatusRequest

#### Usage

    GetBoostsStatusRequest$new(peer = NULL)

#### Arguments

- `peer`:

  input peer or identifier

#### Returns

self

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer using client/utils helpers

#### Usage

    GetBoostsStatusRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object that provides get_input_entity

- `utils`:

  utils object that provides get_input_peer

#### Returns

self

------------------------------------------------------------------------

### Method `to_list()`

Convert request to list (dictionary)

#### Usage

    GetBoostsStatusRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `bytes()`

Serialize to raw bytes

#### Usage

    GetBoostsStatusRequest$bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Construct a new GetBoostsStatusRequest from a reader

#### Usage

    GetBoostsStatusRequest$from_reader(reader)

#### Arguments

- `reader`:

  reader object exposing tgread_object()

#### Returns

GetBoostsStatusRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetBoostsStatusRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
