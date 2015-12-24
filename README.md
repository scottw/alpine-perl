# alpine-perl

Perl on Alpine Linux

This is an experimental build of Perl 5.22.1 on Alpine Linux. The test
harness is disabled during build because the following tests fail:

    ../lib/Net/hostent.t
      Non-zero exit status: 22
      Parse errors: Bad plan.  You planned 7 tests but ran 4.
    ../lib/locale.t
      Failed test:  428
    ../lib/warnings.t
      Failed test:  698

Use at your own risk.

This Perl image is 213.5 MB--about 1/3 the size of the offical Perl
Docker Hub image (656 MB)
