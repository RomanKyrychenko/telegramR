// [[Rcpp::depends(Rcpp)]]
#include <Rcpp.h>
#include <openssl/evp.h>
#include <cstring>
#include <cstdint>

using namespace Rcpp;

// ─────────────────────────────────────────────────────
// INTERNAL HELPERS
// ─────────────────────────────────────────────────────

static const EVP_CIPHER* aes_ecb_cipher(int key_len) {
  switch (key_len) {
    case 16: return EVP_aes_128_ecb();
    case 24: return EVP_aes_192_ecb();
    case 32: return EVP_aes_256_ecb();
    default: return nullptr;
  }
}

// ─────────────────────────────────────────────────────
// 1. AES-IGE ENCRYPT
//
// IGE mode (matches R/aes.R encrypt_ige):
//   iv1 = iv[0..15], iv2 = iv[16..31]
//   For each 16-byte plaintext block P:
//     C = AES_ECB_encrypt(P XOR iv1) XOR iv2
//     iv1 = C,  iv2 = P
// ─────────────────────────────────────────────────────
// [[Rcpp::export]]
RawVector aes_ige_encrypt(RawVector key_raw, RawVector iv_raw, RawVector data_raw) {
  int key_len  = key_raw.size();
  int data_len = data_raw.size();

  if (!aes_ecb_cipher(key_len))
    stop("aes_ige_encrypt: key must be 16, 24, or 32 bytes");
  if (iv_raw.size() != 32)
    stop("aes_ige_encrypt: iv must be exactly 32 bytes");
  if (data_len % 16 != 0)
    stop("aes_ige_encrypt: data length must be a multiple of 16");

  const uint8_t* key = (const uint8_t*) RAW(key_raw);
  const uint8_t* iv  = (const uint8_t*) RAW(iv_raw);
  const uint8_t* src = (const uint8_t*) RAW(data_raw);

  EVP_CIPHER_CTX* ctx = EVP_CIPHER_CTX_new();
  if (!ctx) stop("EVP_CIPHER_CTX_new failed");
  EVP_EncryptInit_ex(ctx, aes_ecb_cipher(key_len), NULL, key, NULL);
  EVP_CIPHER_CTX_set_padding(ctx, 0);

  RawVector out(data_len);
  uint8_t* dst = (uint8_t*) RAW(out);

  uint8_t iv1[16], iv2[16], tmp[16];
  memcpy(iv1, iv,      16);
  memcpy(iv2, iv + 16, 16);

  int blocks = data_len / 16;
  for (int b = 0; b < blocks; ++b) {
    const uint8_t* P = src + b * 16;
    uint8_t*       C = dst + b * 16;

    for (int i = 0; i < 16; ++i) tmp[i] = P[i] ^ iv1[i];  // tmp = P XOR iv1

    int outl = 0;
    EVP_EncryptUpdate(ctx, C, &outl, tmp, 16);              // C = AES(tmp)

    for (int i = 0; i < 16; ++i) C[i] ^= iv2[i];           // C = C XOR iv2

    memcpy(iv1, C, 16);   // iv1 = C
    memcpy(iv2, P, 16);   // iv2 = P
  }

  EVP_CIPHER_CTX_free(ctx);
  return out;
}

// ─────────────────────────────────────────────────────
// 2. AES-IGE DECRYPT
//
// IGE mode (matches R/aes.R decrypt_ige):
//   iv1 = iv[0..15], iv2 = iv[16..31]
//   For each 16-byte ciphertext block C:
//     P = AES_ECB_decrypt(C XOR iv2) XOR iv1
//     iv1 = C,  iv2 = P
// ─────────────────────────────────────────────────────
// [[Rcpp::export]]
RawVector aes_ige_decrypt(RawVector key_raw, RawVector iv_raw, RawVector data_raw) {
  int key_len  = key_raw.size();
  int data_len = data_raw.size();

  if (!aes_ecb_cipher(key_len))
    stop("aes_ige_decrypt: key must be 16, 24, or 32 bytes");
  if (iv_raw.size() != 32)
    stop("aes_ige_decrypt: iv must be exactly 32 bytes");
  if (data_len % 16 != 0)
    stop("aes_ige_decrypt: data length must be a multiple of 16");

  const uint8_t* key = (const uint8_t*) RAW(key_raw);
  const uint8_t* iv  = (const uint8_t*) RAW(iv_raw);
  const uint8_t* src = (const uint8_t*) RAW(data_raw);

  EVP_CIPHER_CTX* ctx = EVP_CIPHER_CTX_new();
  if (!ctx) stop("EVP_CIPHER_CTX_new failed");
  EVP_DecryptInit_ex(ctx, aes_ecb_cipher(key_len), NULL, key, NULL);
  EVP_CIPHER_CTX_set_padding(ctx, 0);

  RawVector out(data_len);
  uint8_t* dst = (uint8_t*) RAW(out);

  uint8_t iv1[16], iv2[16], tmp[16];
  memcpy(iv1, iv,      16);
  memcpy(iv2, iv + 16, 16);

  int blocks = data_len / 16;
  for (int b = 0; b < blocks; ++b) {
    const uint8_t* C = src + b * 16;
    uint8_t*       P = dst + b * 16;

    for (int i = 0; i < 16; ++i) tmp[i] = C[i] ^ iv2[i];  // tmp = C XOR iv2

    int outl = 0;
    EVP_DecryptUpdate(ctx, P, &outl, tmp, 16);              // P = AES_dec(tmp)

    for (int i = 0; i < 16; ++i) P[i] ^= iv1[i];           // P = P XOR iv1

    memcpy(iv1, C, 16);   // iv1 = C
    memcpy(iv2, P, 16);   // iv2 = P
  }

  EVP_CIPHER_CTX_free(ctx);
  return out;
}

// ─────────────────────────────────────────────────────
// 3. PACK INT64  (little-endian, 8 bytes)
//
// Handles: double, integer, character (decimal string).
// The R wrapper coerces bigz to character before calling.
// Negatives are handled via two's-complement wrap in uint64_t.
// ─────────────────────────────────────────────────────
// [[Rcpp::export]]
RawVector pack_int64(SEXP x) {
  uint64_t val = 0;

  if (TYPEOF(x) == REALSXP) {
    double dv = REAL(x)[0];
    if (dv < 0.0) {
      uint64_t pos = (uint64_t)(-dv);
      val = ~pos + 1ULL;
    } else {
      val = (uint64_t) dv;
    }
  } else if (TYPEOF(x) == INTSXP) {
    int iv = INTEGER(x)[0];
    if (iv < 0) {
      uint64_t pos = (uint64_t)(-iv);
      val = ~pos + 1ULL;
    } else {
      val = (uint64_t) iv;
    }
  } else if (TYPEOF(x) == STRSXP) {
    const char* s = CHAR(STRING_ELT(x, 0));
    if (s[0] == '-') {
      uint64_t pos = strtoull(s + 1, nullptr, 10);
      val = ~pos + 1ULL;
    } else {
      val = strtoull(s, nullptr, 10);
    }
  } else {
    stop("pack_int64: unsupported type — pass numeric or character");
  }

  RawVector out(8);
  uint8_t* p = (uint8_t*) RAW(out);
  for (int i = 0; i < 8; ++i) {
    p[i] = (uint8_t)(val & 0xFF);
    val >>= 8;
  }
  return out;
}

// ─────────────────────────────────────────────────────
// 4. UNPACK INT64  (little-endian, 8 bytes → double)
//
// Returns double (same precision limitation as the R version).
// ─────────────────────────────────────────────────────
// [[Rcpp::export]]
double unpack_int64(RawVector raw_vector) {
  if (raw_vector.size() != 8)
    stop("unpack_int64: raw_vector must be exactly 8 bytes");
  const uint8_t* p = (const uint8_t*) RAW(raw_vector);
  uint64_t val = 0;
  for (int i = 7; i >= 0; --i) val = (val << 8) | p[i];
  return (double) val;
}

// ─────────────────────────────────────────────────────
// 5. XOR BYTES
//
// Exported as xor_bytes_cpp to avoid name collision with
// the existing R-level xor_bytes() wrapper in utils.R.
// Returns min(length(a), length(b)) bytes.
// ─────────────────────────────────────────────────────
// [[Rcpp::export(name = "xor_bytes_cpp")]]
RawVector xor_bytes(RawVector a, RawVector b) {
  int len = std::min(a.size(), b.size());
  if (len == 0) return RawVector(0);
  RawVector out(len);
  const uint8_t* pa = (const uint8_t*) RAW(a);
  const uint8_t* pb = (const uint8_t*) RAW(b);
  uint8_t*       po = (uint8_t*)       RAW(out);
  for (int i = 0; i < len; ++i) po[i] = pa[i] ^ pb[i];
  return out;
}
