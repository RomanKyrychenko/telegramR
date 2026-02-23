# BotCancelStarsSubscriptionRequest

Telegram API type BotCancelStarsSubscriptionRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `BotCancelStarsSubscriptionRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `user_id`:

  Field.

- `charge_id`:

  Field.

- `restore`:

  Field.

## Methods

### Public methods

- [`BotCancelStarsSubscriptionRequest$new()`](#method-BotCancelStarsSubscriptionRequest-new)

- [`BotCancelStarsSubscriptionRequest$resolve()`](#method-BotCancelStarsSubscriptionRequest-resolve)

- [`BotCancelStarsSubscriptionRequest$to_dict()`](#method-BotCancelStarsSubscriptionRequest-to_dict)

- [`BotCancelStarsSubscriptionRequest$bytes()`](#method-BotCancelStarsSubscriptionRequest-bytes)

- [`BotCancelStarsSubscriptionRequest$from_reader()`](#method-BotCancelStarsSubscriptionRequest-from_reader)

- [`BotCancelStarsSubscriptionRequest$clone()`](#method-BotCancelStarsSubscriptionRequest-clone)

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

Initialize the BotCancelStarsSubscriptionRequest object.

#### Usage

    BotCancelStarsSubscriptionRequest$new(user_id, charge_id, restore = NULL)

#### Arguments

- `user_id`:

  The input user (TypeInputUser).

- `charge_id`:

  The charge ID (string).

- `restore`:

  Optional boolean flag to restore the subscription.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the user_id using client and utils.

#### Usage

    BotCancelStarsSubscriptionRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    BotCancelStarsSubscriptionRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    BotCancelStarsSubscriptionRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    BotCancelStarsSubscriptionRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of BotCancelStarsSubscriptionRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotCancelStarsSubscriptionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
