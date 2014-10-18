#!/usr/bin/perl

use strict;
use st01::st01;
use st02::st02;
use st08::st08;
use st15::st15;
use st22::st22;

# Если для своей работы создаете отдельный форк, не забывайте его синхронизировать перед отправкой:
# https://help.github.com/articles/syncing-a-fork/
#

my @MODULES = 
(
	\&ST01::st01,
	\&ST02::st02,
	\&ST08::st08,
	\&ST15::st15,
	\&ST22::st22,
);

my @NAMES = 
(
	"Student 01",
	"Student 02",
	"08. kuzznetsovva",
	"15. Pridachin",
	"22. ShishkinaViktoria"
);

sub menu
{
	my $i = 0;
	print "\n------------------------------\n";
	foreach my $s(@NAMES)
	{
		$i++;
		print "$i. $s\n";
	}
	print "------------------------------\n";
	my $ch = <STDIN>;
	return ($ch-1);
}

while(1)
{
	my $ch = menu();
	if(defined $MODULES[$ch])
	{
		print $NAMES[$ch]." launching...\n\n";
		$MODULES[$ch]->();
	}
	else
	{
		exit();
	}
}
