# LaunchPrepaidGiveawayRequest

Telegram API type LaunchPrepaidGiveawayRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `LaunchPrepaidGiveawayRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `giveaway_id`:

  Field.

- `purpose`:

  Field.

## Methods

### Public methods

- [`LaunchPrepaidGiveawayRequest$new()`](#method-LaunchPrepaidGiveawayRequest-new)

- [`LaunchPrepaidGiveawayRequest$resolve()`](#method-LaunchPrepaidGiveawayRequest-resolve)

- [`LaunchPrepaidGiveawayRequest$to_dict()`](#method-LaunchPrepaidGiveawayRequest-to_dict)

- [`LaunchPrepaidGiveawayRequest$bytes()`](#method-LaunchPrepaidGiveawayRequest-bytes)

- [`LaunchPrepaidGiveawayRequest$from_reader()`](#method-LaunchPrepaidGiveawayRequest-from_reader)

- [`LaunchPrepaidGiveawayRequest$clone()`](#method-LaunchPrepaidGiveawayRequest-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize the LaunchPrepaidGiveawayRequest object.

#### Usage

    LaunchPrepaidGiveawayRequest$new(peer, giveaway_id, purpose)

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

- `giveaway_id`:

  The giveaway ID (integer).

- `purpose`:

  The input store payment purpose (TypeInputStorePaymentPurpose).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    LaunchPrepaidGiveawayRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    LaunchPrepaidGiveawayRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    LaunchPrepaidGiveawayRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    LaunchPrepaidGiveawayRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of LaunchPrepaidGiveawayRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LaunchPrepaidGiveawayRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
