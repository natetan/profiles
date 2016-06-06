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
alias init="git init"
alias pull="git pull origin master"
alias push="git push origin master"
alias s="echo 'git status' && git status"
alias add="git add $@"
alias addall="git add ."
alias commit="git commit -m "$@""
alias commitall="git commit -am "$@""
alias remote="git remote -v"
alias addo="echo 'git remote add origin' & git remote add origin $@"
alias seto="echo 'git remote set-url origin' & git remote set-url origin $@"

# Quality of Life
alias sbash="source ~/.bash_profile"
alias vbash="vim ~/.bash_profile"
alias vhistory="vim ~/.bash_history"
alias vvim="vim ~/.vimrc"
alias up="cd .."
alias prev="cd -"
alias copy="clip <$@"
alias save="cp ~/.bash_profile ~/profiles/"
alias update="cp ~/profiles/.bash_profile ~"
alias savesnips="cp -r ~/.vim/bundle/vim-snippets/snippets ~/profiles/"
alias updatesnips="cp -r ~/profiles/snippets ~/.vim/bundle/vim-snippets/"
alias home="start ~"
alias music="start ~/Music"
alias uw="cd ~/Documents/UW"
alias dev="cd ~/Development"
alias webs="cd ~/Development/webs"
alias cse154="cd ~/Documents/UW/Sophomore/Winter/cse154"
alias card="cd /d"
alias marveld="cd /d/marvel"
alias marvel="cd ~/marvel"
alias imagesd="cd /d/images"
alias images="cd ~/images"

# Grades
alias grade="cat ~/Documents/UW/uwgrades.csv | grep -i "$@""
