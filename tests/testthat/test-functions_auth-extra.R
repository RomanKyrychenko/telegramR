test_that("auth request serializers cover simple branches", {
  accept <- AcceptLoginTokenRequest$new(charToRaw("abc"))
  expect_equal(accept$to_list(), list("_" = "AcceptLoginTokenRequest", token = charToRaw("abc")))
  expect_equal(
    accept$to_bytes(),
    c(as.raw(c(0x4D, 0xAD, 0x94, 0xE8)), serialize_bytes(charToRaw("abc")))
  )

  cancel <- CancelCodeRequest$new("123", "hash")
  expect_equal(
    cancel$to_list(),
    list("_" = "CancelCodeRequest", phone_number = "123", phone_code_hash = "hash")
  )
  expect_equal(
    cancel$to_bytes(),
    c(
      as.raw(c(0x78, 0x05, 0x04, 0x1F)),
      serialize_bytes("123"),
      serialize_bytes("hash")
    )
  )

  recovery <- CheckRecoveryPasswordRequest$new("secret")
  expect_equal(
    recovery$to_list(),
    list("_" = "CheckRecoveryPasswordRequest", code = "secret")
  )
  expect_equal(
    recovery$to_bytes(),
    c(as.raw(c(0x79, 0xBF, 0x36, 0x0D)), serialize_bytes("secret"))
  )

  export_auth <- ExportAuthorizationRequest$new(9L)
  expect_equal(
    export_auth$to_list(),
    list("_" = "ExportAuthorizationRequest", dc_id = 9L)
  )
  expect_equal(
    export_auth$to_bytes(),
    c(as.raw(c(0xCD, 0xFF, 0xBF, 0xE5)), writeBin(9L, raw(), size = 4, endian = "little"))
  )
})

test_that("BindTempAuthKeyRequest serializes datetimes via package helper", {
  expires_at <- as.POSIXct("2025-01-01 00:00:00", tz = "UTC")
  req <- BindTempAuthKeyRequest$new(
    perm_auth_key_id = 1,
    nonce = 2,
    expires_at = expires_at,
    encrypted_message = charToRaw("x")
  )

  expect_equal(
    req$to_list(),
    list(
      "_" = "BindTempAuthKeyRequest",
      perm_auth_key_id = 1,
      nonce = 2,
      expires_at = expires_at,
      encrypted_message = charToRaw("x")
    )
  )

  expect_equal(
    req$to_bytes(),
    c(
      as.raw(c(0x05, 0x2A, 0xD4, 0xCD)),
      writeBin(1, raw(), size = 8, endian = "little"),
      writeBin(2, raw(), size = 8, endian = "little"),
      serialize_datetime(expires_at),
      serialize_bytes(charToRaw("x"))
    )
  )
})

test_that("CheckPasswordRequest handles supported and unsupported password objects", {
  password_to_bytes <- new.env(parent = emptyenv())
  class(password_to_bytes) <- "R6"
  password_to_bytes$to_list <- function() list(kind = "to_bytes")
  password_to_bytes$to_bytes <- function() as.raw(c(0x01, 0x02))

  req <- CheckPasswordRequest$new(password_to_bytes)
  expect_equal(
    req$to_list(),
    list("_" = "CheckPasswordRequest", password = list(kind = "to_bytes"))
  )
  expect_equal(
    req$to_bytes(),
    c(as.raw(c(0x16, 0x4D, 0x8B, 0xD1)), as.raw(c(0x01, 0x02)))
  )

  password_bytes_alias <- new.env(parent = emptyenv())
  class(password_bytes_alias) <- "R6"
  password_bytes_alias$`_bytes` <- function() as.raw(c(0x03, 0x04))

  req_alias <- CheckPasswordRequest$new(password_bytes_alias)
  expect_equal(
    req_alias$to_bytes(),
    c(as.raw(c(0x16, 0x4D, 0x8B, 0xD1)), as.raw(c(0x03, 0x04)))
  )

  expect_error(
    CheckPasswordRequest$new(NULL)$to_bytes(),
    "password must be provided"
  )

  bad_password <- new.env(parent = emptyenv())
  class(bad_password) <- "R6"
  expect_error(
    CheckPasswordRequest$new(bad_password)$to_bytes(),
    "does not provide _bytes\\(\\) or to_bytes\\(\\)"
  )
})

test_that("vector-based auth requests serialize compact payloads", {
  drop_keys <- DropTempAuthKeysRequest$new(c(1, 2))
  expect_equal(
    drop_keys$to_list(),
    list("_" = "DropTempAuthKeysRequest", except_auth_keys = list(1, 2))
  )
  expect_equal(
    drop_keys$to_bytes(),
    c(
      as.raw(c(0x88, 0xA1, 0x48, 0x8E)),
      as.raw(c(0x15, 0xC4, 0xB5, 0x1C)),
      writeBin(2L, raw(), size = 4, endian = "little"),
      writeBin(1, raw(), size = 8, endian = "little"),
      writeBin(2, raw(), size = 8, endian = "little")
    )
  )

  export_login <- ExportLoginTokenRequest$new(123L, "hash", c(4, 5))
  expect_equal(
    export_login$to_list(),
    list(
      "_" = "ExportLoginTokenRequest",
      api_id = 123L,
      api_hash = "hash",
      except_ids = list(4, 5)
    )
  )
  expect_equal(
    export_login$to_bytes(),
    c(
      as.raw(c(0xFE, 0x85, 0xE0, 0xB7)),
      writeBin(123L, raw(), size = 4, endian = "little"),
      serialize_bytes("hash"),
      as.raw(c(0x15, 0xC4, 0xB5, 0x1C)),
      writeBin(2L, raw(), size = 4, endian = "little"),
      writeBin(4, raw(), size = 8, endian = "little"),
      writeBin(5, raw(), size = 8, endian = "little")
    )
  )
})
