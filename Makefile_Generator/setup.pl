#!/usr/bin/perl


# suggested location for the make.pl command
$file='/usr/local/bin/make.pl';

if(-e $file){	
	# if the file already exists remove it (to add the new version)
	system("sudo rm $file");
}

# adjust $file to copy to the correct location
$file='/usr/local/bin/';

# copy  make.pl to $file
system("sudo cp make.pl $file");
