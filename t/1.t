# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

use Test::More tests => 2;

BEGIN { use_ok('Finance::YahooJPN::QuoteHist') };

my $stock = '6758.t';
my $start = '2003-08-12';

# fetch the quotes of Sony Corp. at Tokyo market.
my @quote = Finance::YahooJPN::QuoteHist->quotes($stock, $start);
my $quote = $quote[0];

my $expected = '2003-08-12	3590	3630	3560	3600	1871600';

is( $quote, $expected,
	'fetching specific quote data' );
