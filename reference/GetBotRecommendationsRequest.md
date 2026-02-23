# GetBotRecommendationsRequest

Telegram API type GetBotRecommendationsRequest

## Details

GetBotRecommendationsRequest R6 class

Represents the GetBotRecommendationsRequest TL request.

Each method is documented inline below.

## Public fields

- `bot`:

  Field.

## Methods

### Public methods

- [`GetBotRecommendationsRequest$new()`](#method-GetBotRecommendationsRequest-new)

- [`GetBotRecommendationsRequest$resolve()`](#method-GetBotRecommendationsRequest-resolve)

- [`GetBotRecommendationsRequest$to_list()`](#method-GetBotRecommendationsRequest-to_list)

- [`GetBotRecommendationsRequest$to_bytes()`](#method-GetBotRecommendationsRequest-to_bytes)

- [`GetBotRecommendationsRequest$clone()`](#method-GetBotRecommendationsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetBotRecommendationsRequest

#### Usage

    GetBotRecommendationsRequest$new(bot)

#### Arguments

- `bot`:

  TypeInputUser or identifier Resolve references (convert entities via
  client/utils)

  Resolves bot via client\$get_input_entity and utils\$get_input_user.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    GetBotRecommendationsRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  utils with get_input_user

#### Returns

invisible(self) Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetBotRecommendationsRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetBotRecommendationsRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetBotRecommendationsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
