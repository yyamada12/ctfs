#!/usr/bin/perl

$| = 1;

foreach $f (@ARGV) {
	if ($f eq "-") { # from standard input
		while (defined($c = getc(STDIN))) {
			print "$c";
		}
	} else { # from file
		if (!-f $f) {
			die "\nERROR: File not found: $f\n";
		}

		open(FILE, "$f");

		# １バイトずつでなくまとめて出力しないと，ROPによるread()が
		# サイズ途中で終了してしまうので，まとめて出力する
		$s = "";
		while (defined($c = getc(FILE))) {
			$s .= $c;
		}
		print "$s";
		close(FILE);
	}
	sleep(1);
}
