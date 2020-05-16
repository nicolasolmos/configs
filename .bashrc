# BASH VARIABLES CONFIGURATION SECTION

HISTCONTROL=ignoreboth
HISTSIZE=10
HISTFILESIZE=0

# ANSI escape codes https://en.wikipedia.org/wiki/ANSI_escape_code#CSI_sequences
PS1='\001\033[1;38;5;202m\002\w\001\033[1;38;5;214m\002 '

# ls command how to config colors http://www.bigsoft.co.uk/blog/2008/04/11/configuring-ls_colors
LS_COLORS='di=01;93:ln=00;36:pi=30;47:so=30;47:do=30;47:bd=30;47:cd=30;47:or=97;41:mi=97;41:su=00:sg=00:ca=00:tw=00:ow=00:st=00:ex=01;92:*.deb=01;31:'

# ALIASES SECTION
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias edit='gedit'
alias cls='clear'
alias free='free -h'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

force_color_prompt=yes
color_prompt=yes

# EXPORT ZONE START

export LS_COLORS

#### FROM HERE DEFAULT CONFIG

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ -f /usr/share/bash-completion/bash_completion ]; then
. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi

