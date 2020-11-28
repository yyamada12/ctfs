#!/usr/bin/perl

$size = shift(@ARGV);

if ($size == 0) {
	$size = 16;
}

while (defined($c = getc(STDIN))) {
	$out .= $c;
}

$out =~ s/Limit of execution\. \(\d+\)\n*//;

$enc = substr($out, -($size * 2), $size);
$key = substr($out, -$size);

for ($i = 0; $i < $size; $i++) {
	$password .= chr(ord(substr($enc, $i, 1)) ^ ord(substr($key, $i, 1)));
}

print "$password";
#print " $key";
print "\n";
