# StarsTransaction

Telegram API type StarsTransaction

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `StarsTransaction`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`StarsTransaction$new()`](#method-StarsTransaction-new)

- [`StarsTransaction$to_dict()`](#method-StarsTransaction-to_dict)

- [`StarsTransaction$bytes()`](#method-StarsTransaction-bytes)

- [`StarsTransaction$clone()`](#method-StarsTransaction-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$from_reader()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-from_reader)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    StarsTransaction$new(
      id,
      amount,
      date,
      peer,
      refund = NULL,
      pending = NULL,
      failed = NULL,
      gift = NULL,
      reaction = NULL,
      stargift_upgrade = NULL,
      business_transfer = NULL,
      stargift_resale = NULL,
      posts_search = NULL,
      stargift_prepaid_upgrade = NULL,
      title = NULL,
      description = NULL,
      photo = NULL,
      transaction_date = NULL,
      transaction_url = NULL,
      bot_payload = NULL,
      msg_id = NULL,
      extended_media = NULL,
      subscription_period = NULL,
      giveaway_post_id = NULL,
      stargift = NULL,
      floodskip_number = NULL,
      starref_commission_permille = NULL,
      starrefpeer = NULL,
      starref_amount = NULL,
      paid_messages = NULL,
      premium_gift_months = NULL,
      ads_proceeds_from_date = NULL,
      ads_proceeds_to_date = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    StarsTransaction$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    StarsTransaction$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    StarsTransaction$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
