#!/usr/bin/perl

$xfile = shift(@ARGV);
$startsym = shift(@ARGV);
$endsym = shift(@ARGV);

$| = 1;

################################
# get program header
$_ = `readelf -W -l $xfile | grep LOAD`;

($dummy, $type, $offset, $vaddr, $paddr, $filesize, $memsize, $flag, $align)
	= split(/\s+/);
#print "$type, $offset, $vaddr, $paddr, $filesize, $memsize, $flag, $align\n";

################################
# get symbol tables

$_ = `readelf -W -s $xfile | grep $startsym | grep -v ${startsym}_`;
($dummy, $snum, $saddr, $ssize, $stype, $sbind, $svis, $sindex, $sname)
	= split(/\s+/);
#print "$snum, $saddr, $ssize, $stype, $sbind, $svis, $sindex, $sname\n";

$_ = `readelf -W -s $xfile | grep $endsym | grep -v ${endsym}_`;
($dummy, $enum, $eaddr, $esize, $etype, $ebind, $evis, $eindex, $ename)
	= split(/\s+/);
#print "$enum, $eaddr, $esize, $etype, $ebind, $evis, $eindex, $ename\n";

################################
# output

$load_offset = hex($saddr) - hex($vaddr) + hex($offset);
$load_size   = hex($eaddr) - hex($saddr);

$count = 0;
while (defined($c = getc(STDIN))) {
	if (($count >= $load_offset) && ($count < $load_offset + $load_size)) {
		print "$c";
	}
	$count++;
}
