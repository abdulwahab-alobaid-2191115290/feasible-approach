#!/usr/bin/perl

$ARGC=$#ARGV+1;

if($ARGC != 4 && $ARGC != 3){
	exec('echo "ERROR: invalid no. of arguments , expected <PROJECT NAME> <COMPILE MODE> <FILE> <EXE> OR <PROJECT NAME> <py> <.py file>"');

}
elsif($ARGC == 3 && @ARGV[1] eq "py"){	# python makefile
	$proj=@ARGV[0];
	$mode=@ARGV[1];
	$file=@ARGV[2];

	system("mkdir $proj");		# make directory
	system("make.pl $mode $file");	# run make.pl
	

	# since sytem("cd $proj ; make.pl ...") , does not work with perl , we will run the make.pl then use absolute path to move it to our directory
	
	$src=`echo -n \`pwd\``.'/Makefile'; 	# get current directory then concatenate the makefile , to create an absolute path source , -n to remove \n end of path
	$dst=`echo -n \`pwd\``.'/'.$proj.'/';	# get current directory then concatenate $proj , to create an absolute path for destination , -n to remove \n end of path
	system("mv $src $dst");			# move makefile from the current directory to the project directory

}
elsif($ARGC == 4 && (@ARGV[1] eq "gcc" || @ARGV[1] eq "g++")){
	$proj=@ARGV[0];
	$mode=@ARGV[1];
	$file=@ARGV[2];
	$exe =@ARGV[3];

	system("mkdir $proj");
	system("make.pl $mode $file $exe");
	
	$src=`echo -n \`pwd\``.'/Makefile';
	$dst=`echo -n \`pwd\``.'/'.$proj.'/';
	system("mv $src $dst");
	
}
else{
	exec('echo "ERROR : invalid second argument , expected \'g++\' or \'gcc\'"');
}

