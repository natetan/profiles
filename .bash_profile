# Git awareness
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export TERM=xterm-256color

# Colors:
# Color format: \e[ (start color), 0;[code]m, \e[m (end color)

# light-red: 91
# light-green: 92
# light-yellow: 93
# light-blue: 94
# light-magenta: 95

# green: 32
# blue: 34
# cyan: 36

# Prompt info
# \u - username
# \h - hostname (computer name)
# \w - working directory (full path)
# \@ is the 12 hour time

# Color for the name
COLOR1='\e[0;94m';
# Color for the @
COLOR2='\e[0;93m';
# Color for the host / pc name
COLOR3='\e[0;95m';
# Color for the directory
COLOR4='\e[0;91m';
# Color for the commands
COLOR5='\e[0;92m';
# Where the color ends
ENDCOLOR='\e[m';
export PS1="$COLOR1\u$ENDCOLOR$COLOR2@$ENDCOLOR$COLOR3\h$ENDCOLOR $COLOR4\w$ENDCOLOR \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]$COLOR5\n$ "

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
alias mongo="cd /c/MongoDB/Server/3.2/bin"

# Grades
alias grade="cat ~/Documents/UW/uwgrades.csv | grep -i "$@""

# bg
alias updatebamboo="scp -r bgadmin@bamboo-garden.co:/home/bgadmin/bamboogarden.net ~"
alias savebamboo="scp -r ~/bamboogarden.net bgadmin@bamboo-garden.co:/home/bgadmin"
alias sbamboo="ssh bgadmin@bamboo-garden.co"
