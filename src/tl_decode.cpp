// Table-driven TL decoder for the "lite" message path (see R/tl_fast.R).
//
// Builds the same classed named lists that BinaryReader$tgread_object()
// produces in lite mode, field for field. Constructors outside the table are
// decoded by calling back into R at that byte position; any decoding error
// raises tl_decode_error, which the R side turns into "decode this message
// with the R path instead".

#include <Rcpp.h>
#include <algorithm>
#include <cstdint>
#include <cstring>
#include <string>
#include <unordered_map>
#include <vector>

using namespace Rcpp;

namespace {

enum Kind {
  K_FLAGS = 0, K_TRUE = 1, K_INT = 2, K_LONG = 3, K_DOUBLE = 4, K_STRING = 5,
  K_BYTES = 6, K_INT128 = 7, K_INT256 = 8, K_BOOL = 9, K_OBJECT = 10,
  K_VEC_OBJECT = 11, K_VEC_INT = 12, K_VEC_LONG = 13, K_VEC_DOUBLE = 14,
  K_VEC_STRING = 15, K_VEC_BYTES = 16
};

const uint32_t CTOR_VECTOR = 0x1cb5c415u;
const uint32_t CTOR_GZIP = 0x3072cfa1u;
const uint32_t CTOR_TRUE = 0x997275b5u;
const uint32_t CTOR_FALSE = 0xbc799737u;

struct tl_decode_error : public std::exception {
  const char* what() const noexcept { return "tl_decode_error"; }
};

struct Step {
  int kind;
  int flagref;   // index of the flags word gating this field, -1 if none
  uint32_t mask;
  int flagvar;   // for K_FLAGS: index to store the word in
  int slot;      // output list index (0 is CONSTRUCTOR_ID), -1 for K_FLAGS
};

struct Ctor {
  std::vector<Step> steps;
  int nslots = 0;
  int nflags = 0;
  SEXP names = R_NilValue;  // preserved for the table's lifetime
  SEXP klass = R_NilValue;
};

struct Table {
  std::unordered_map<uint32_t, Ctor> ctors;
  ~Table() {
    for (auto& kv : ctors) {
      R_ReleaseObject(kv.second.names);
      R_ReleaseObject(kv.second.klass);
    }
  }
};

class Decoder {
 public:
  Decoder(const Table& t, const uint8_t* data, size_t len, size_t pos, Function& fallback)
      : t_(t), d_(data), n_(len), p_(pos), fallback_(fallback) {}

  size_t pos() const { return p_; }

  SEXP object() {
    size_t start = p_;
    uint32_t ctor = u32();
    if (ctor == CTOR_VECTOR) {
      int32_t count = (int32_t) u32();
      size_t max_possible = (n_ - p_) / 4;
      if (count < 0 || (size_t) count > max_possible) return delegate(start);
      List out(count);
      for (int32_t i = 0; i < count; ++i) out[i] = object();
      return out;
    }
    if (ctor == CTOR_GZIP) return delegate(start);
    auto it = t_.ctors.find(ctor);
    if (it == t_.ctors.end()) return delegate(start);
    return decode(ctor, it->second);
  }

 private:
  const Table& t_;
  const uint8_t* d_;
  size_t n_;
  size_t p_;
  Function& fallback_;

  void need(size_t k) {
    if (k > n_ - p_) throw tl_decode_error();
  }
  uint32_t u32() {
    need(4);
    uint32_t v;
    std::memcpy(&v, d_ + p_, 4);  // TL is little-endian, as are all R platforms
    p_ += 4;
    return v;
  }
  uint64_t u64() {
    need(8);
    uint64_t v;
    std::memcpy(&v, d_ + p_, 8);
    p_ += 8;
    return v;
  }

  // Hand the object starting at `start` (its constructor id) to R.
  SEXP delegate(size_t start) {
    List res = fallback_((double) start);
    SEXP obj = res[0];
    double np = as<double>(res[1]);
    if (!(np >= (double) start) || np > (double) n_) throw tl_decode_error();
    p_ = (size_t) np;
    return obj;
  }

  SEXP int_value() {
    int32_t v = (int32_t) u32();
    // INT_MIN is NA_integer_ in R, matching bytes_to_int32_cpp()
    return Rf_ScalarInteger(v);
  }

  // gmp::bigz in its raw serialisation: [count=1][words][sign][limbs, most
  // significant first], all 32-bit.
  SEXP long_value() {
    int64_t v = (int64_t) u64();
    uint64_t mag = v < 0 ? (~(uint64_t) v + 1) : (uint64_t) v;
    uint32_t hi = (uint32_t)(mag >> 32), lo = (uint32_t)(mag & 0xffffffffu);
    int words = hi ? 2 : 1;
    int32_t hdr[3] = {1, words, v == 0 ? 0 : (v < 0 ? -1 : 1)};
    SEXP out = PROTECT(Rf_allocVector(RAWSXP, 4 * (3 + words)));
    uint8_t* o = RAW(out);
    std::memcpy(o, hdr, 12);
    if (words == 2) {
      std::memcpy(o + 12, &hi, 4);
      std::memcpy(o + 16, &lo, 4);
    } else {
      std::memcpy(o + 12, &lo, 4);
    }
    Rf_setAttrib(out, R_ClassSymbol, Rf_mkString("bigz"));
    UNPROTECT(1);
    return out;
  }

  SEXP double_value() {
    need(8);
    double v;
    std::memcpy(&v, d_ + p_, 8);
    p_ += 8;
    return Rf_ScalarReal(v);
  }

  // Returns pointer/length of a TL byte string and skips its padding.
  const uint8_t* tl_bytes(size_t& len) {
    need(1);
    uint8_t first = d_[p_++];
    if (first == 254) {
      need(3);
      len = (size_t) d_[p_] | ((size_t) d_[p_ + 1] << 8) | ((size_t) d_[p_ + 2] << 16);
      p_ += 3;
    } else {
      len = first;
    }
    need(len);
    const uint8_t* ptr = d_ + p_;
    p_ += len;
    size_t pad = first == 254 ? len % 4 : (len + 1) % 4;
    if (pad > 0) {
      need(4 - pad);
      p_ += 4 - pad;
    }
    return ptr;
  }

  SEXP string_value() {
    size_t len;
    const uint8_t* ptr = tl_bytes(len);
    if (len && std::memchr(ptr, 0, len)) throw tl_decode_error();  // R strings cannot hold NUL
    return Rf_ScalarString(Rf_mkCharLenCE((const char*) ptr, (int) len, CE_UTF8));
  }

  SEXP bytes_value() {
    size_t len;
    const uint8_t* ptr = tl_bytes(len);
    SEXP out = Rf_allocVector(RAWSXP, len);
    if (len) std::memcpy(RAW(out), ptr, len);
    return out;
  }

  SEXP raw_value(size_t len) {
    need(len);
    SEXP out = Rf_allocVector(RAWSXP, len);
    std::memcpy(RAW(out), d_ + p_, len);
    p_ += len;
    return out;
  }

  SEXP bool_value() {
    uint32_t v = u32();
    if (v == CTOR_TRUE) return Rf_ScalarLogical(TRUE);
    if (v == CTOR_FALSE) return Rf_ScalarLogical(FALSE);
    throw tl_decode_error();
  }

  SEXP scalar(int kind) {
    switch (kind) {
      case K_INT: return int_value();
      case K_LONG: return long_value();
      case K_DOUBLE: return double_value();
      case K_STRING: return string_value();
      case K_BYTES: return bytes_value();
      case K_INT128: return raw_value(16);
      case K_INT256: return raw_value(32);
      case K_BOOL: return bool_value();
      case K_OBJECT: return object();
    }
    throw tl_decode_error();
  }

  SEXP value(int kind) {
    if (kind == K_VEC_OBJECT) {
      if (u32() != CTOR_VECTOR) throw tl_decode_error();
      int32_t count = (int32_t) u32();
      // every element takes at least 4 bytes: reject impossible counts before
      // allocating (a corrupted count must not trigger a huge allocation)
      if (count < 0 || (size_t) count > (n_ - p_) / 4) throw tl_decode_error();
      List out(count);
      for (int32_t i = 0; i < count; ++i) out[i] = object();
      return out;
    }
    if (kind >= K_VEC_INT && kind <= K_VEC_BYTES) {
      u32();  // vector constructor (not checked, as in the generated R code)
      int32_t count = (int32_t) u32();
      if (count <= 0) return List(0);
      int elem = kind == K_VEC_INT ? K_INT : kind == K_VEC_LONG ? K_LONG :
                 kind == K_VEC_DOUBLE ? K_DOUBLE : kind == K_VEC_STRING ? K_STRING : K_BYTES;
      if ((size_t) count > (n_ - p_) / 4) throw tl_decode_error();
      List out(count);
      for (int32_t i = 0; i < count; ++i) out[i] = scalar(elem);
      return out;
    }
    return scalar(kind);
  }

  SEXP decode(uint32_t ctor, const Ctor& c) {
    List out(c.nslots);
    out[0] = (double) ctor;
    uint32_t flags[8] = {0};
    for (const Step& s : c.steps) {
      if (s.kind == K_FLAGS) {
        flags[s.flagvar] = u32();
        continue;
      }
      bool present = s.flagref < 0 || (flags[s.flagref] & s.mask) != 0;
      if (s.kind == K_TRUE) {
        out[s.slot] = Rf_ScalarLogical(present ? TRUE : FALSE);
      } else if (present) {
        out[s.slot] = value(s.kind);
      }  // absent optional fields stay NULL
    }
    out.attr("names") = c.names;
    out.attr("class") = c.klass;
    return out;
  }
};

}  // namespace

// [[Rcpp::export(name = "tl_table_build_cpp")]]
SEXP tl_table_build_cpp(NumericVector keys, List entries) {
  Table* t = new Table();
  for (R_xlen_t i = 0; i < keys.size(); ++i) {
    List e = entries[i];
    IntegerVector kind = e["kind"], flagref = e["flagref"], flagvar = e["flagvar"], slot = e["slot"];
    NumericVector mask = e["mask"];
    CharacterVector names = e["names"], klass = e["class"];
    Ctor c;
    c.nslots = names.size();
    for (R_xlen_t j = 0; j < kind.size(); ++j) {
      Step s;
      s.kind = kind[j];
      s.flagref = flagref[j];
      s.mask = (uint32_t) mask[j];
      s.flagvar = flagvar[j];
      s.slot = slot[j];
      if (s.kind == K_FLAGS) c.nflags = std::max(c.nflags, s.flagvar + 1);
      c.steps.push_back(s);
    }
    if (c.nflags > 8) continue;  // never happens in the current schema; leave to R
    c.names = names;
    c.klass = klass;
    R_PreserveObject(c.names);
    R_PreserveObject(c.klass);
    // shared by every decoded object of this constructor: copy-on-modify
    MARK_NOT_MUTABLE(c.names);
    MARK_NOT_MUTABLE(c.klass);
    t->ctors.emplace((uint32_t) keys[i], std::move(c));
  }
  return XPtr<Table>(t, true);
}

// Decode the TL object at byte offset `pos` (0-based). Returns list(object,
// new_pos), or NULL if it could not be decoded (the caller then uses the R
// path for the whole object).
// [[Rcpp::export(name = "tl_decode_object_cpp")]]
SEXP tl_decode_object_cpp(SEXP table, RawVector data, double pos, Function fallback) {
  XPtr<Table> t(table);
  if (pos < 0 || pos > (double) data.size()) return R_NilValue;
  Decoder dec(*t, RAW(data), (size_t) data.size(), (size_t) pos, fallback);
  try {
    SEXP obj = PROTECT(dec.object());
    List res = List::create(obj, (double) dec.pos());
    UNPROTECT(1);
    return res;
  } catch (tl_decode_error&) {
    return R_NilValue;
  }
}
