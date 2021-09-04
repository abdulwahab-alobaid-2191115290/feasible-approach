
## easier-approach

### contents
* [Makefile-generator](https://github.com/abdulwahab-alobaid-2191115290/easier-approach/tree/main/Makefile_Generator)

---
##### Makefile-generator  

* `make.pl` : a script that generates the makefile , args : `<COMPILE MODE> <FILE> <EXE>` OR `<py> <.py file>`  
for example : `./make.pl gcc main.c main`  
  
this will generate a Makefile that looks like :  
  
```makefile
all:
	gcc -g -o main main.c
rm:
	rm Makefile
```  
---  
* `project.pl` : a script that takes an additional argument to generate a directory that has the Makefile  
for example : `./project.pl myproj g++ main.cpp main`  
which results in `myproj/Makefile`
---  
*  `setup.pl` : which adds or updates the make.pl and project.pl in `/usr/local/bin/` basically it will remove `make.pl` if it exists then copy it from the current directory  
(which should be`easier-approach/Makefile-generator/`) to the `/usr/local/bin/` , use the `setup.pl` to add or update "make.pl" and "project.pl" in the `/usr/local/bin/`   directory

###### use case/s :  
* for me I just copied the scripts to the `/usr/local/bin` so that I can run it any time I wanted to do a quick program , I don't recommend doing that for setup.pl
  
###### currently supporting :
* C/C++
* python , with "python3" command  
	
##### Contributions  
  
yes :)
