#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#default bash prompt -> PS1='[\u@\h \W]\$ '

# color of the path section
FOLDER_BG=105
FOLDER_PRE_BG=$(($FOLDER_BG - 10))

PS1='• \[\e[$((31 + $RANDOM % 7 + ( $RANDOM % 2 * 60 )))m\] $(bash $HOME/.dotfiles/kaomoji.sh -p=$HOME/.dotfiles/kaomoji.txt) \[\e[0m\] ✿  \[\e[${FOLDER_PRE_BG}m\]\[\e[${FOLDER_BG}m\] \[\e[93m\] /\W \[\e[0m\]\[\e[${FOLDER_PRE_BG}m\] \[\e[91m\]>\[\e[0m\] '

echo -e "╭─ [\e[91m  $(whoami)@$(uname -n)\e[m ] [ \e[94m  $(date +%H:%M)\e[m ] [ \e[92m󰣇  Day $(((($(date +%s)-$(date --date="$(stat / | awk '/Birth: /{print $2 " " substr($3,1,5)}')" +"%s")))/86400))\e[m ]\n│"

#####################
#      ALIAS        #
#####################

alias ls='ls --color=auto'
alias grep='grep --color=auto'


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
alias ff='fastfetch'

alias debloat='ncdu / --exclude /media --exclude /run/timeshift'

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'


#####################
#      PATH         #
#####################


# Created by `pipx` on 2025-03-28 19:31:49
export PATH="$PATH:/home/antoine/.local/bin"

# Following line was automatically added by arttime installer
export MANPATH=/home/antoine/.local/share/man:$MANPATH

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"