# ApplyBoostRequest

Telegram API type ApplyBoostRequest

## Details

ApplyBoostRequest R6 class

Representation of the TL request "ApplyBoostRequest".

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor ID for the request

- `SUBCLASS_OF_ID`:

  Subclass ID for the request

- `peer`:

  Input peer (object or identifier)

- `slots`:

  Integer vector of slots or NULL

## Methods

### Public methods

- [`ApplyBoostRequest$new()`](#method-ApplyBoostRequest-new)

- [`ApplyBoostRequest$resolve()`](#method-ApplyBoostRequest-resolve)

- [`ApplyBoostRequest$to_list()`](#method-ApplyBoostRequest-to_list)

- [`ApplyBoostRequest$bytes()`](#method-ApplyBoostRequest-bytes)

- [`ApplyBoostRequest$from_reader()`](#method-ApplyBoostRequest-from_reader)

- [`ApplyBoostRequest$clone()`](#method-ApplyBoostRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Create a new ApplyBoostRequest

#### Usage

    ApplyBoostRequest$new(peer = NULL, slots = NULL)

#### Arguments

- `peer`:

  input peer or identifier

- `slots`:

  integer vector of slots or NULL

#### Returns

self

------------------------------------------------------------------------

### Method `resolve()`

Resolve peer using client/utils helpers

#### Usage

    ApplyBoostRequest$resolve(client, utils)

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

    ApplyBoostRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `bytes()`

Serialize to raw bytes

#### Usage

    ApplyBoostRequest$bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Construct a new ApplyBoostRequest from a reader

#### Usage

    ApplyBoostRequest$from_reader(reader)

#### Arguments

- `reader`:

  reader object exposing read_int / tgread_object

#### Returns

ApplyBoostRequest

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ApplyBoostRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
