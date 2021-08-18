#!/usr/bin/perl

$ARGC=$#ARGV+1;
# setting no. of agrs such that the first argument = 1 , instead of 0

if($ARGC != 3){
	exec('echo "ERROR: invalid no. of arguments , expected <COMPILE MODE> <FILE> <EXE>"');
}

$mode=@ARGV[0];		# compile mode , gcc || g++
$file=@ARGV[1];		# file name , ex. main.c
$exe=@ARGV[2];		# executable name 

if($mode eq "g++"){
	$command="echo \"all:\n\tg++ -g -o $exe $file\">Makefile";
	exec($command);
	# if mode is g++ set all: target with the debug information and redirect it to the Makefile
	# did not combine $command & exec because exec does not work with external variables 
}	

elsif($mode eq "gcc"){
	$command="echo \"all:\n\tgcc -g -o $exe $file\">Makefile";
	exec($command);
}
else{
	exec('echo "ERROR : invalid first argument , expected \'g++\' or \'gcc\'"');
	# in case the first argument is not g++ || gcc
}
