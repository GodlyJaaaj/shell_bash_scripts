# shell_bash_scripts

This is a collection of some of the shell bash scripts that i have made. You can use them as you wish. I have tried to make them as simple as possible. If you have any suggestions or improvements, please let me know.\
They might be usefull for ***Epitech*** students, but you can use them as you wish.\
Don't forget to `chmod +x scriptname` the scripts before using them otherwise you might not be able to execute them.\
I will try to update this repo as much as possible and add more scripts.
```diff
-Be aware of the coding style before pushing your code to a repo.
```

---

- ## init_my_repo

This script will create some basics files for your project. It will create a Makefile, a .gitignore, an include folder containing a header file and a src folder containing a main.c file.


```shell
./init_my_repo [bin_name]
```
```txt
Bin_name:
    the name of the binary file that will be created by the Makefile,
    this is also the name of the .h file that will be created in the
    include folder.
Example:
    ./init_my_repo "my_sokoban"
```
---

- ## discord_updater

Installing discord on Linux can be a **little bit tricky**.
So, i made this script to help you install discord on your Linux machine. This script will download the latest version of discord and install it. It can also update discord if you already have it installed.

It can also create a desktop file so you can launch discord from your desktop environment.

```shell
./discord_updater [install|update] [path]
```

```txt
To install discord:
    ./discord_updater install [path]

To update discord:
    ./discord_updater update [path]

Path:
    The path where you want to install discord or update it.
    If you don't specify a path, the script won't do anything.
```
---

- ## create_prototypes (WIP)

```diff
-This script is not finished yet.
```
No need to explain that retrieving function prototypes **is a big pain**.
The aim of this script is to create a header file containing all the prototypes of the functions in a folder.
Yet, it only outputs the prototypes of the functions in your terminal.
    
```shell
./create_prototypes [.c file] [OPTION...]
```
```txt
.c file:
    The .c file that you want to create the prototypes from.

OPTIONS:
    -i, --ignore : ignore the coding style checker

example:
    ./create_prototypes main.c -i
```
---