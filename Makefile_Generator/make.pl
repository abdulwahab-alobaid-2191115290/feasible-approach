#!/usr/bin/perl

$ARGC=$#ARGV+1;
# setting no. of agrs such that the first argument = 1 , instead of 0

# insuring user input
if($ARGC != 3 && $ARGC != 2){
	exec('echo "ERROR: invalid no. of arguments , expected <COMPILE MODE> <FILE> <EXE> OR <py> <.py file>"');
}
# if user wants the Makefile for python
elsif($ARGC == 2 && @ARGV[0] eq "py"){	
	$mode=@ARGV[0];
	$file=@ARGV[1];

	$command="echo \"all:\n\tpython3 $file\nrm:\n\trm Makefile\">Makefile";
	exec($command);
}

$mode=@ARGV[0];		# compile mode , gcc || g++
$file=@ARGV[1];		# file name , ex. main.c
$exe=@ARGV[2];		# executable name 


if($mode ne 'gcc' && $mode ne 'g++'){
	exec('echo "ERROR : invalid first argument , expected \'g++\' or \'gcc\'"');
	# in case the first argument is not g++ || gcc
}

$command="echo \"all:\n\t$mode -g -o $exe $file\nrm:\n\trm Makefile\">Makefile";
exec($command);			

# if mode is g++ || gcc set "all:" target with the debug information and redirect it to the Makefile
# did not combine $command & exec because exec does not work with external variables 



