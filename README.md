# cht.bat
Windows version of primeagen's [cht.sh script](https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-cht.sh)

This script is a simple wrapper around [cht.sh](https://cht.sh/) that curls the cheat sheet for the given topic from the command line.

You can specify the topic, and languages in the files `.tmux-cht-languages` and `.tmux-cht-commands` respectively. Some of the well known languages and commands are already included in the files.

It uses `fzf` to select the topic and language interactively. If you don't have `fzf` installed, you will have to install it to get the script working.


