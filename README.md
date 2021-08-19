
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
```
