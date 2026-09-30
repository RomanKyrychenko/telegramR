# CRAN Submission Comments — telegramR 0.0.2

## Test environments

* Local: macOS (aarch64), R 4.5.1, `R CMD check --as-cran`
* GitHub Actions: Ubuntu 24.04, R-devel, R-release, R-oldrel

## R CMD check results

0 errors | 0 warnings | 2 notes

One warning appears only in the local run and is a toolchain artefact, not a
package issue; it does not occur on CRAN's build machines:

* `unknown warning group '-Wfixed-enum-extension'` originates in R's own
  header `R_ext/Boolean.h`, whose `#pragma clang diagnostic` names a warning
  group that a bleeding-edge Apple clang (clang 21) no longer recognises, so
  clang emits it via the default-on `-Wunknown-warning-option`. It is
  independent of the package's flags, and CRAN's clang recognises the group.
  The package's own C/C++ compiles cleanly.

(The "checkbashisms" warning and the "unable to verify current time" note seen
in earlier local runs were purely local: the script was not installed and the
machine was offline. The `configure`/`cleanup` scripts are POSIX `sh` and pass
`checkbashisms`.)

### NOTE 1: Possibly unsafe call — `unlockBinding`

```
File 'telegramR/R/rsa.R':
  unlockBinding("server_keys", env)
```

`unlockBinding` is used once during package initialisation to populate the
`server_keys` environment with the RSA public keys that Telegram's MTProto
protocol requires. The keys are stored in a locked binding to prevent
accidental modification after initialisation; that locking prevents the
initial write, so the binding is briefly unlocked. The call runs once and is
not exposed to users.

### NOTE 2: Installed size

```
installed size is ~17.4Mb
sub-directories of 1Mb or more:
  R        14.3Mb
```

`R/types.R` is auto-generated from Telegram's TL (Type Language) schema and
contains the full set of protocol classes; this is unavoidable for complete
MTProto coverage and is consistent with other auto-generated protocol-binding
packages. The source tarball is ~3.4Mb.

### NOTE 3: Overall check time

Check time is elevated because of the large number of auto-generated R6 class
definitions in `R/types.R`. There is no way to reduce this materially without
reducing protocol coverage.

## Changes in this version

* Synced the bundled TL schema to layer 229 and regenerated all TL type and
  request classes (fixes dialog and message parsing against current servers).
* Reworked the schema code-generation tooling in `data-raw/` entirely in R.
* Fixed 64-bit integer / byte-field serialisation and the send-media chain.
* Fixed the unqualified `openssl::rand_bytes()` call and the `Rcpp` import.
