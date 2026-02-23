# AnswerWebhookJSONQueryRequest

Telegram API type AnswerWebhookJSONQueryRequest

## Details

AnswerWebhookJSONQueryRequest R6 class

Represents the AnswerWebhookJSONQueryRequest TL request.

Each method is documented inline below.

## Public fields

- `query_id`:

  Field.

- `data`:

  Field.

## Methods

### Public methods

- [`AnswerWebhookJSONQueryRequest$new()`](#method-AnswerWebhookJSONQueryRequest-new)

- [`AnswerWebhookJSONQueryRequest$to_list()`](#method-AnswerWebhookJSONQueryRequest-to_list)

- [`AnswerWebhookJSONQueryRequest$to_bytes()`](#method-AnswerWebhookJSONQueryRequest-to_bytes)

- [`AnswerWebhookJSONQueryRequest$clone()`](#method-AnswerWebhookJSONQueryRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize AnswerWebhookJSONQueryRequest

#### Usage

    AnswerWebhookJSONQueryRequest$new(query_id, data)

#### Arguments

- `query_id`:

  numeric/integer (64-bit)

- `data`:

  TypeDataJSON or representation Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    AnswerWebhookJSONQueryRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    AnswerWebhookJSONQueryRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AnswerWebhookJSONQueryRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
