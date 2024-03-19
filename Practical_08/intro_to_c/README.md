# README #

This is a set of lessons on getting starter with C programming.

### Getting Started Windows ###
* Download and install [MYSYS2](https://www.msys2.org/)
> ***NOTE*** [MYSYS2](https://www.msys2.org/) is a helpful installer that uses a package manager called `pacman'. [Pacman](https://www.msys2.org/docs/package-management/) is used in ***Arch Linux*** for package management.
* `pacman -S make` => Makefiles
* `pacman -S git` => using git commands
* `pacman -S mingw-w64-ucrt-x86_64-gcc` => compile or cpp into a exe or bin
* Run this terminal `C:\msys64\ucrt64.exe`
* git clone repo
* run make in [MYSYS2](https://www.msys2.org/) terminal

### Compiling Lessons ###
* This repository includes a [Makefile](https://bitbucket.org/MuddyGames/introduction_to_c/src/main/Makefile) that works cross platform Linux and Windows and you can also create your own Makefile from the [sample](https://bitbucket.org/MuddyGames/introduction_to_c/src/main/Makefile.sample).
* In terminal at root of project run the following command `make lesson=./introduction/lesson_14` to compile introduction lesson_14 using cross platform [Makefile](https://bitbucket.org/MuddyGames/introduction_to_c/src/main/Makefile)
* In terminal at root of project run the following command `make lesson=./advanced/lesson_01` to compile advanced lesson_01 using cross platform [Makefile](https://bitbucket.org/MuddyGames/introduction_to_c/src/main/Makefile)

### Compiling Lessons ###

### Part 1 
Use the sample *`makefile`* below to verify that ***make*** is setup correctly. If will also confirm that ***Bash*** terminal within VSC is setup correctly. The space before `echo` should be a tab. The file should be saved with filename `Makefile` or `makefile`. Type `make` command into terminal to invoke make.

>
```
hello:
	echo "Checking that tabs are setup correctly
```
### Part 2 
 Type the following code into terminal
>`gcc -o sampleapp ./src/introduction/lesson_01/main.c -I.`

* **gcc** is the compiler command. This command invokes the C compiler from the **GNU Compiler Collection (GCC)**
* **-o** compiles and links and generates an executable target from the compiled objects
* **sampleapp** target filename of binary or executable
* **./src/introduction/lesson_01/main.c** is name and location of 'mainline' main file
* **-I.** loads library during the object code link phase, in this case our header file (note `.` at the end, which specifies current path/directory)

>**NOTE:** will expand on these commands with in makefile in the parts that follow.

### Part 3
Type the following code into terminal to produce object files
>`gcc -c ./src/introduction/lesson_01/main.c -I.`

Type the following code into terminal to produce .out files
>`gcc -s ./src/introduction/lesson_01/main.c -I.`

Open files ending in **.o** and **.out** review contents

### Part 4
Type the following code into terminal to produce assembly files
>`gcc -S ./src/introduction/lesson_01/main.c -I.`

Open files ending in **.s** and review contents

### Part 5 
Hitting the **Wall**

Include the -Wall option. This will ensure all warning messages that are generated during compilation will be printed out

>`gcc -Wall -o ./src/introduction/lesson_01/main.c -I.`

### Part 6
Putting in a make file
Need a build taget label and tab for recipe

>
```
build:
    g++ -o sampleapp ./src/introduction/lesson_01/main.c -I.
```

### Part 7
Adding progress output

>
```
build:
    @echo "Build Started"
    g++ -o sampleapp ./src/introduction/lesson_01/main.c -I.
    @echo "Build Complete"
```

### Part 8
Replacing the default goal for make

`.DEFAULT_GOAL:= build` or default target `all:`

[![](https://mermaid.ink/img/eyJjb2RlIjoiZ3JhcGggVEQ7XG4gICAgQVthbGw6XSAtLSBDYWxscyBUYXJnZXQgLS0-IEJbYnVpbGQ6XVxuICAiLCJtZXJtYWlkIjp7InRoZW1lIjoiZGVmYXVsdCJ9LCJ1cGRhdGVFZGl0b3IiOmZhbHNlLCJhdXRvU3luYyI6dHJ1ZSwidXBkYXRlRGlhZ3JhbSI6ZmFsc2V9)](https://mermaid-js.github.io/mermaid-live-editor/edit#eyJjb2RlIjoiZ3JhcGggVEQ7XG4gICAgQVthbGw6XSAtLSBDYWxscyBUYXJnZXQgLS0-IEJbYnVpbGQ6XVxuICAiLCJtZXJtYWlkIjoie1xuICBcInRoZW1lXCI6IFwiZGVmYXVsdFwiXG59IiwidXBkYXRlRWRpdG9yIjpmYWxzZSwiYXV0b1N5bmMiOnRydWUsInVwZGF0ZURpYWdyYW0iOmZhbHNlfQ)

### Part 9
Cleaning up by removing intermediate files (object files)
>
```
clean:
	@echo "Cleaning up"
	rm *.o
```
### Part 10
Completed simple Makefile
>
```
all:= build

build:
	@echo "Build Started"
	g++ -o sampleapp ./src/introduction/lesson_01/main.c -I.
	@echo "Build Complete"
	./sampleapp

clean:
	@echo "Cleaning up"
	rm *.o
```
Call by typing `make clean` in terminal


### Part 11
Explore adding variables, compiler and linker options
>
```
CXX			:= gcc

MSG_START	:= "Build Started"
MSG_END		:= "Build Complete"
MSG_CLEAN	:= "Cleaning up"

BUILD_DIR	:= ./bin
SRC_DIR		:= ./src

TARGET		:= ${BUILD_DIR}/sampleapp.bin

SRC			:= ${SRC_DIR}/introduction/lesson_01/main.c

all			:= build

build:
	@echo ${MSG_START}
	${CXX} -o ${TARGET} ${SRC} -I.
	@echo ${MSG_END}
	./${TARGET}

clean:
	@echo ${MSG_CLEAN}
	rm ${TARGET}
```

>**NOTE**
`-g provides debugging feature when using gdb`
`-Wextra -Werror` enables some extra warnings not turned on by -Wall. -Werror make all warnings into errors ;-)
`:=` operator is a simply expanded variable, avoid recursive assignment and potential recursive calls in makefiles.

```
CXX = gcc
CXX = ${CXX}

all:
    @echo ${CXX}
```
>**NOTE** Try the above code to see a recursive call to CXX

### Get familiar with ***Bash*** commands
* If you already have GitBash installed tryout the following terminal commands
* `pwd' Present working directory
* `ls` list the contents of a directory
* `cd` change directory
* `mkdir` make directory

### Who do I talk to? ###

* philip.bourke@setu.ie