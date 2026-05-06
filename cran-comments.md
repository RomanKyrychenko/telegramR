# CRAN Submission Comments

## Test environments

* GitHub Actions: Ubuntu 24.04, R-devel, R-release, R-oldrel
* Local: macOS, R-release

## R CMD check results

0 errors | 0 warnings | 2 notes

### NOTE 1: Possibly unsafe call — `unlockBinding`

```
File 'telegramR/R/rsa.R':
  unlockBinding("server_keys", env)
```

`unlockBinding` is used once during package initialisation to populate the
`server_keys` environment with the RSA public keys that Telegram's MTProto
protocol requires. There is no alternative approach: the keys must be stored
in a locked binding to prevent accidental modification after initialisation,
but that locking prevents the initial write. The call is guarded so it only
runs once and is not exposed to users.

### NOTE 2: Large installed size

```
installed size is ~110 Mb
sub-directories of 1 Mb or more:
  R  105.5 Mb
```

The `R/` directory is large because `R/types.R` is auto-generated from
Telegram's TL (Type Language) schema and contains ~14 000 R6 class
definitions (~1.9 Mb source, expands on install). This is unavoidable for
full MTProto schema coverage and is consistent with other auto-generated
protocol-binding packages.
