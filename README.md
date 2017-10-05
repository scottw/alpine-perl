# alpine-perl

Perl on Alpine Linux

This is a build of Perl 5.26.1 on Alpine Linux. Because of its small size and pre-installed `cpanm`, this is an ideal base for Perl-based Docker images.

This Docker image is 218 MB.

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
    Files=2553, Tests=1185098, 1286 wallclock secs (94.22 usr 10.28 sys + 774.59 cusr 38.68 csys = 917.77 CPU)
    Result: FAIL

If you depend on the functionality covered by these tests, you may
wish to choose another image.
