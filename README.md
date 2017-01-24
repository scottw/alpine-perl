# alpine-perl

Perl on Alpine Linux

This is a build of Perl 5.24.1 on Alpine Linux. Because of its small
size and pre-installed `cpanm`, this is an ideal base for Perl-based
Docker images.

This Docker image is 216.2 MB.

## CAVEAT

3 tests in Perl's suite fail:

    Test Summary Report
    -------------------
    ../cpan/Time-Piece/t/02core_dst.t
      Failed tests:  58-60
    ../lib/locale.t
      Failed test:  442
    ../lib/warnings.t
      Failed test:  713
    Files=2404, Tests=844145, 1071 wallclock secs (57.14 usr 10.74 sys + 614.87 cusr 29.64 csys = 712.39 CPU)
    Result: FAIL

If you depend on the functionality covered by these tests, you may
wish to choose another image.
