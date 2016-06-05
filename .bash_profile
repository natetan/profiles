#if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
export TERM=xterm-256color
# This changes the regular $ sign AND the pwd
# Colors:
# light-red: 91
# light-yellow: 93
# green: 32
STARTCOLOR='\e[0;93m';
ENDCOLOR="\e[0m"
export PS1="$STARTCOLOR\u@\h \w $ENDCOLOR\n$ "
