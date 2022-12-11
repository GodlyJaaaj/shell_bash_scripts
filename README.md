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

You can use options to add some compilation flags to the Makefile.

The .gitignore file will by default ignore all .out, .txt, .pdf, .log, .vscode, .idea and vgcore.* (valgrind files) files.

```shell
./init_my_repo [bin_name] [options]
```
```txt
Bin_name:
    the name of the binary file that will be created by the Makefile,
    this is also the name of the .h file that will be created in the
    include folder.

Options:
    -math : add -lm to the Makefile
    -ncurses : add -lncurses to the Makefile
    -csfml: add -lcsfml-graphics -lcsfml-window -lcsfml-system
        -lcsfml-audio -lcsfml-network to the Makefile

Example:
    ./init_my_repo "my_sokoban" -ncurses
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