# alpine-perl

Perl on Alpine Linux

This is a build of Perl 5.26.3 on Alpine Linux. Because of its small size and pre-installed `cpanm`, this is an ideal base for Perl-based Docker images.

This Docker image is 238 MB.

## CAVEAT

3 tests in Perl's suite fail:

    Test Summary Report
    -------------------
    ../cpan/Time-Piece/t/02core_dst.t
      Failed tests:  58-60
      Non-zero exit status: 3
    ../lib/locale.t
      Failed test:  450
    ../lib/warnings.t
      Failed test:  723
    Files=2557, Tests=1241510, 293 wallclock secs (99.44 usr 10.83 sys + 784.29 cusr 40.95 csys = 935.51 CPU)
    Result: FAIL

If you depend on the functionality covered by these tests, you may
wish to choose another image.
