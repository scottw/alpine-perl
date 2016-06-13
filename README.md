# alpine-perl

Perl on Alpine Linux

This is a build of Perl 5.24.0 on Alpine Linux. Because of its small
size and pre-installed `cpanm`, this is an ideal base for Perl-based
Docker images.

This Docker image is 213.9 MB.

## CAVEAT

3 tests in Perl's suite fail:

    ../cpan/Time-Piece/t/02core_dst.t
      Failed tests:  58-60
    ../lib/locale.t
      Failed test:  442
    ../lib/warnings.t
      Failed test:  713

If you depend on the functionality covered by these tests, you may
wish to choose another image.
