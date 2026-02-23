# RequestFirebaseSmsRequest

Telegram API type RequestFirebaseSmsRequest

## Details

RequestFirebaseSmsRequest R6 class

Represents the TLRequest auth.RequestFirebaseSmsRequest.

Fields:

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `phone_number`:

  Field.

- `phone_code_hash`:

  Field.

- `safety_net_token`:

  Field.

- `play_integrity_token`:

  Field.

- `ios_push_secret`:

  Field.

## Methods

### Public methods

- [`RequestFirebaseSmsRequest$new()`](#method-RequestFirebaseSmsRequest-new)

- [`RequestFirebaseSmsRequest$to_list()`](#method-RequestFirebaseSmsRequest-to_list)

- [`RequestFirebaseSmsRequest$to_bytes()`](#method-RequestFirebaseSmsRequest-to_bytes)

- [`RequestFirebaseSmsRequest$from_reader()`](#method-RequestFirebaseSmsRequest-from_reader)

- [`RequestFirebaseSmsRequest$clone()`](#method-RequestFirebaseSmsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a RequestFirebaseSmsRequest

#### Usage

    RequestFirebaseSmsRequest$new(
      phone_number,
      phone_code_hash,
      safety_net_token = NULL,
      play_integrity_token = NULL,
      ios_push_secret = NULL
    )

#### Arguments

- `phone_number`:

  character

- `phone_code_hash`:

  character

- `safety_net_token`:

  character or NULL

- `play_integrity_token`:

  character or NULL

- `ios_push_secret`:

  character or NULL

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    RequestFirebaseSmsRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    RequestFirebaseSmsRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create RequestFirebaseSmsRequest

#### Usage

    RequestFirebaseSmsRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string(),
  tgread_object()

#### Returns

RequestFirebaseSmsRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RequestFirebaseSmsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
