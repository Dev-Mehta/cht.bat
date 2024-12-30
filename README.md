# cht.bat
Windows version of primeagen's [cht.sh script](https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-cht.sh)

This script is a simple wrapper around [cht.sh](https://cht.sh/) that curls the cheat sheet for the given topic from the command line.

You can specify the topic, and languages in the files `.tmux-cht-languages` and `.tmux-cht-commands` respectively. Some of the well known languages and commands are already included in the files.

It uses `fzf` to select the topic and language interactively. If you don't have `fzf` installed, you will have to install it to get the script working.

## Usage

Run `cht.bat` in your windows terminal, you'll be prompted with selecting the programming language you want to query, or the command.

![image](https://github.com/user-attachments/assets/0049e9f8-ead6-4ee4-a7eb-c53654e75b69)

![image](https://github.com/user-attachments/assets/34076541-abc1-43ed-bd7a-bd1282fb5e85)

![image](https://github.com/user-attachments/assets/dbd7a9f7-16ad-4344-b918-3a997853fe90)
