# Git awareness
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export TERM=xterm-256color

# Fav colors:
# light-red: 91
# light-yellow: 93
# green: 32
STARTCOLOR='\e[0;93m';
ENDCOLOR="\e[0m"
# End color is not necessary here, bc I'm coloring the entire prompt
export PS1="$STARTCOLOR\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]$ENDCOLOR\n$ "

# Logins
alias suw="ssh swifties@vergil.u.washington.edu"

# Git stuff
alias push="git push origin master"
alias pull="git pull origin master"
alias s="echo 'git status' && git status"
alias add="git add $@"
alias addall="git add ."
alias commit="git commit -m "$@""
alias commitall="git commit -am "$@""

# Quality of Life
alias sbash="source ~/.bash_profile"
alias vbash="vim ~/.bash_profile"
alias vhistory="vim ~/.bash_history"
alias vvim="vim ~/.vimrc"
alias up="cd .."
alias copy="clip <$@"
alias update="cp ~/.bash_profile ~/profiles/"
alias transfer="cp ~/profiles/.bash_profile ~"

# Grades
alias grade="cat ~/Documents/UW/uwgrades.csv | grep -i "$@""
