
## easier-approach

### contents
* [Makefile-generator](https://github.com/abdulwahab-alobaid-2191115290/easier-approach/tree/main/Makefile_Generator)

---
##### Makefile-generator  
  
self descriptive , the script needs three arguments \<compile mode\> \<file\> \<executable name\>  
for example :  
`./make.pl gcc main.c main`  

this will generate a Makefile that looks like :  
  
```makefile
all:
	gcc -g -o main main.c
rm:
	rm Makefile
```
for me I just copied the script to the `/usr/local/bin` so that I can run it any time I wanted to do a quick program  
  
currently supporting :
* C/C++
* python , with "python3" command


##### Contribution  
  
fork and work , make sure to match my variable naming , in case you needed more variables they have to be self descriptive as much as possible and with good comments in general.
