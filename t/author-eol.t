
BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for testing by the author');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::EOL 0.18

use Test::More 0.88;
use Test::EOL;

my @files = (
    'lib/Perl/Critic/Moose.pm',
    'lib/Perl/Critic/Policy/Moose/ProhibitDESTROYMethod.pm',
    'lib/Perl/Critic/Policy/Moose/ProhibitMultipleWiths.pm',
    'lib/Perl/Critic/Policy/Moose/ProhibitNewMethod.pm',
    'lib/Perl/Critic/Policy/Moose/RequireCleanNamespace.pm',
    'lib/Perl/Critic/Policy/Moose/RequireMakeImmutable.pm',
    't/00-compile.t',
    't/00-report-prereqs.dd',
    't/00-report-prereqs.t',
    't/Moose/ProhibitDESTROYMethod.run',
    't/Moose/ProhibitMultipleWiths.run',
    't/Moose/ProhibitNewMethod.run',
    't/Moose/RequireCleanNamespace.run',
    't/Moose/RequireMakeImmutable.run',
    't/author-eol.t',
    't/author-no-tabs.t',
    't/author-pod-spell.t',
    't/policies.t',
    't/release-cpan-changes.t',
    't/release-pod-linkcheck.t',
    't/release-pod-no404s.t',
    't/release-pod-syntax.t',
    't/release-portability.t',
    't/release-synopsis.t',
    't/release-test-version.t'
);

eol_unix_ok($_, { trailing_whitespace => 1 }) foreach @files;
done_testing;
