# Config

Telegram API type Config

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `Config`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `date`:

  Field.

- `expires`:

  Field.

- `test_mode`:

  Field.

- `this_dc`:

  Field.

- `dc_options`:

  Field.

- `dc_txt_domain_name`:

  Field.

- `chat_size_max`:

  Field.

- `megagroup_size_max`:

  Field.

- `forwarded_count_max`:

  Field.

- `online_update_period_ms`:

  Field.

- `offline_blur_timeout_ms`:

  Field.

- `offline_idle_timeout_ms`:

  Field.

- `online_cloud_timeout_ms`:

  Field.

- `notify_cloud_delay_ms`:

  Field.

- `notify_default_delay_ms`:

  Field.

- `push_chat_period_ms`:

  Field.

- `push_chat_limit`:

  Field.

- `edit_time_limit`:

  Field.

- `revoke_time_limit`:

  Field.

- `revoke_pm_time_limit`:

  Field.

- `rating_e_decay`:

  Field.

- `stickers_recent_limit`:

  Field.

- `channels_read_media_period`:

  Field.

- `call_receive_timeout_ms`:

  Field.

- `call_ring_timeout_ms`:

  Field.

- `call_connect_timeout_ms`:

  Field.

- `call_packet_timeout_ms`:

  Field.

- `me_url_prefix`:

  Field.

- `caption_length_max`:

  Field.

- `message_length_max`:

  Field.

- `webfile_dc_id`:

  Field.

- `default_p2p_contacts`:

  Field.

- `preload_featured_stickers`:

  Field.

- `revoke_pm_inbox`:

  Field.

- `blocked_mode`:

  Field.

- `force_try_ipv6`:

  Field.

- `tmp_sessions`:

  Field.

- `autoupdate_url_prefix`:

  Field.

- `gif_search_username`:

  Field.

- `venue_search_username`:

  Field.

- `img_search_username`:

  Field.

- `static_maps_provider`:

  Field.

- `suggested_lang_code`:

  Field.

- `lang_pack_version`:

  Field.

- `base_lang_pack_version`:

  Field.

- `reactions_default`:

  Field.

- `autologin_token`:

  Field.

## Methods

### Public methods

- [`Config$new()`](#method-Config-new)

- [`Config$to_list()`](#method-Config-to_list)

- [`Config$clone()`](#method-Config-clone)

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
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    Config$new(
      date,
      expires,
      test_mode,
      this_dc,
      dc_options,
      dc_txt_domain_name,
      chat_size_max,
      megagroup_size_max,
      forwarded_count_max,
      online_update_period_ms,
      offline_blur_timeout_ms,
      offline_idle_timeout_ms,
      online_cloud_timeout_ms,
      notify_cloud_delay_ms,
      notify_default_delay_ms,
      push_chat_period_ms,
      push_chat_limit,
      edit_time_limit,
      revoke_time_limit,
      revoke_pm_time_limit,
      rating_e_decay,
      stickers_recent_limit,
      channels_read_media_period,
      call_receive_timeout_ms,
      call_ring_timeout_ms,
      call_connect_timeout_ms,
      call_packet_timeout_ms,
      me_url_prefix,
      caption_length_max,
      message_length_max,
      webfile_dc_id,
      default_p2p_contacts = NULL,
      preload_featured_stickers = NULL,
      revoke_pm_inbox = NULL,
      blocked_mode = NULL,
      force_try_ipv6 = NULL,
      tmp_sessions = NULL,
      autoupdate_url_prefix = NULL,
      gif_search_username = NULL,
      venue_search_username = NULL,
      img_search_username = NULL,
      static_maps_provider = NULL,
      suggested_lang_code = NULL,
      lang_pack_version = NULL,
      base_lang_pack_version = NULL,
      reactions_default = NULL,
      autologin_token = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    Config$to_list()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Config$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
