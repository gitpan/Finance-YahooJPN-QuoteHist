use 5.008;
use ExtUtils::MakeMaker;

WriteMakefile(
	'NAME'         => 'Finance::YahooJPN::QuoteHist',
	'VERSION_FROM' => 'QuoteHist.pm',
	'PREREQ_PM'    => {
		'LWP::Simple' => '1.36',
	},
	($] >= 5.005 ? (
		'ABSTRACT' => 'fetch historical quotes of Japanese stock markets',
		'AUTHOR'   => 'Masanori HATA <lovewing@geocities.co.jp>',
	) : ()),
);
