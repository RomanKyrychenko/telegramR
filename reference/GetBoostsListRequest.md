# GetBoostsListRequest

Telegram API type GetBoostsListRequest

## Details

GetBoostsListRequest R6 class

Representation of the TL request "GetBoostsListRequest"

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor ID for the request

- `SUBCLASS_OF_ID`:

  Subclass ID for the request

- `peer`:

  Input peer (object or identifier)

- `offset`:

  String offset

- `limit`:

  Integer limit

- `gifts`:

  Optional logical

## Methods

### Public methods

- [`GetBoostsListRequest$new()`](#method-GetBoostsListRequest-new)

- [`GetBoostsListRequest$resolve()`](#method-GetBoostsListRequest-resolve)

- [`GetBoostsListRequest$to_list()`](#method-GetBoostsListRequest-to_list)

- [`GetBoostsListRequest$bytes()`](#method-GetBoostsListRequest-bytes)

- [`GetBoostsListRequest$from_reader()`](#method-GetBoostsListRequest-from_reader)

- [`GetBoostsListRequest$clone()`](#method-GetBoostsListRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Create a new GetBoostsListRequest

#### Usage

    GetBoostsListRequest$new(peer = NULL, offset = "", limit = 0L, gifts = NULL)

#### Arguments

- `peer`:

  input peer or identifier

- `offset`:

  string offset

- `limit`:

  integer limit

- `gifts`:

  optional logical

#### Returns

self

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer using client/utils helpers

#### Usage

    GetBoostsListRequest$resolve(client, utils)

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

    GetBoostsListRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `bytes()`

Serialize to raw bytes

#### Usage

    GetBoostsListRequest$bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Construct a new GetBoostsListRequest from a reader

#### Usage

    GetBoostsListRequest$from_reader(reader)

#### Arguments

- `reader`:

  reader object exposing read_int / read_string / tgread_object

#### Returns

GetBoostsListRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetBoostsListRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
