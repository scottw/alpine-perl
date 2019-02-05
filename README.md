# alpine-perl

Perl on Alpine Linux

This is a build of Perl 5.26.3 on Alpine Linux. Because of its small size and pre-installed `cpanm`, this is an ideal base for Perl-based Docker images.

This Docker image is 238 MB.

NOTE: Recent versions of Alpine include Perl 5.26.3. If you want to use this, use tag `scottw/alpine-perl:5.26-native`.

## CAVEAT

3 tests in Perl's suite fail:

```
Test Summary Report
-------------------
../cpan/Time-Piece/t/02core_dst.t                                (Wstat: 768 Tests: 60 Failed: 3)
  Failed tests:  58-60
  Non-zero exit status: 3
../lib/locale.t                                                  (Wstat: 0 Tests: 682 Failed: 1)
  Failed test:  450
../lib/warnings.t                                                (Wstat: 0 Tests: 919 Failed: 1)
  Failed test:  723
Files=2557, Tests=1241458, 1161 wallclock secs (85.45 usr  9.85 sys + 688.62 cusr 30.45 csys = 814.37 CPU)
Result: FAIL
```

If you depend on the functionality covered by these tests, you may wish to choose another image.
