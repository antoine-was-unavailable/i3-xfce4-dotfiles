#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#old -> PS1='[\u@\h \W]\$ '

#call kaomoji script
KAOMOJI_SCRIPT_PATH="bash $HOME/.dotfiles/kaomoji.sh -r -p=$HOME/.dotfiles/kaomoji.txt"
FOLDER_BG=105
FOLDER_PRE_BG=$(($FOLDER_BG - 10))

#PS1='[ \[$($KAOMOJI_SCRIPT_PATH)\] • \[\e[93m\] /\W\[\e[0m\] ] \[\e[95m\]>\[\e[0m\] '
PS1='• \[$($KAOMOJI_SCRIPT_PATH)\] ✿  \[\e[${FOLDER_PRE_BG}m\]\[\e[${FOLDER_BG}m\] \[\e[93m\] /\W \[\e[0m\]\[\e[${FOLDER_PRE_BG}m\] \[\e[91m\]>\[\e[0m\] '

alias vencord='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'

alias pomodoro='tclock -s 2 -c lightcyan timer -M -d'
alias 5pomodoro='tclock -s 2 -c lightblue timer -d 5m -M'
alias 10pomodoro='tclock -s 2 -c lightblue timer -d 10m -M'
alias 45pomodoro='tclock -s 2 -c lightcyan timer -d 45m -M'
alias nrestore='nitrogen --restore'
alias ll='ls -a -l'
alias youtube='mov-cli -s youtube'

alias whereami='pwd'
alias where='pwd'

alias cls='clear'

alias clock='tclock -s 2 clock -S'

alias nfetch='neofetch --config none'
