# alpine-perl

Perl on Alpine Linux

This is a build of Perl 5.30.0 on Alpine Linux. Because of its small size and pre-installed `cpanm`, this is an ideal base for Perl-based Docker images.

This Docker image is 246 MB.

NOTE: Recent versions of Alpine include Perl 5.30.0. If you want to use this, use tag `scottw/alpine-perl:5.26-native`.

## CAVEAT

3 tests in Perl's suite fail:

```
Test Summary Report
-------------------

t/op/magic ..................................................... ps: unrecognized option: p
BusyBox v1.30.1 (2019-06-12 17:51:55 UTC) multi-call binary.

Usage: ps [-o COL1,COL2=HEADER]

Show list of processes

	-o COL1,COL2=HEADER	Select columns for display
FAILED--unexpected output at test 102


dist/Time-HiRes/t/usleep ....................................... #   Failed test at t/usleep.t line 35.
# Looks like you failed 1 test of 6.
FAILED at test 3

cpan/Time-Piece/t/02core_dst ................................... #   Failed test at t/02core_dst.t line 133.
#          got: '-14400'
#     expected: '-18000'
#   Failed test at t/02core_dst.t line 134.
#          got: '2013-01-09 08:07:11 EDT'
#     expected: '2013-01-09 07:07:11 EST'
#   Failed test at t/02core_dst.t line 135.
#                   '-0400'
#     doesn't match '(?^:-0500|EST)'
# Looks like you failed 3 tests of 56.
FAILED at test 53
```

If you depend on the functionality covered by these tests, you may wish to choose another image.
