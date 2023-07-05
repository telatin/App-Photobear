use v5.12;
use warnings;
use Test::More;

my $perl = $^X;
# Set DEBUG variable
$ENV{PHOTOBEAR_DEBUG} = 1;
$ENV{PHOTOBEAR_TEST} = 1;
$ENV{PHOTOBEAR_API_KEY} = "C0FFEE-C0FFEE-C0FFEE-C0FFEE";
my $system_temp = $ENV{TEMP} || $ENV{TMP} || '/tmp';
my $cmd = "$perl -Ilib bin/photobear --verbose -o \"$system_temp\" vectorization https://www.telatin.com/core-people.png";
my $out = qx($cmd);
my $ret = $? >> 8;
ok($ret == 0, "Return code is 0");
done_testing();