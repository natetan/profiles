# Git awareness
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export TERM=xterm-256color
export PATH=/usr/local/bin:$PATH

# First bit is foreground color, second is background color
export LSCOLORS="Fxexcxdxbxegedabagacad"

# Colors:
# Color format: \e[ (start color), 0;[code]m, \e[m (end color)

# green: 32
# blue: 34
# cyan: 36

# light-red: 91
# light-green: 92
# light-yellow: 93
# light-blue: 94
# light-magenta: 95
# light-cyan: 96

# Prompt info
# \u - username
# \h - hostname (computer name)
# Hostname buggy
# Replacement: $(scutil --get ComputerName) <- terminal commnd that gets pc name
# \w - working directory (full path)
# \@ is the 12 hour time

# Color for the name
COLOR1='\e[0;36m';
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
export PS1="$COLOR1\u$ENDCOLOR$COLOR2@$ENDCOLOR$COLOR3\$(scutil --get ComputerName)$ENDCOLOR $COLOR4\w$ENDCOLOR \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]$COLOR5\n$ "

# Logins
alias suw="ssh swifties@vergil.u.washington.edu"

#zsh
alias getzsh="sh -c '$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'"
alias removezsh="uninstall_oh_my_zsh"

# Powerline Fonts
alias getpowerlinefonts="git clone https://github.com/powerline/fonts.git & cd fonts & ./install.sh & cd .. & remove fonts"

# Git stuff
# Git alias example in terminal
# git config --global alias.s status 
	# this means git s = git status
# git config --global alias.civ commit -v
	# this means git civ = git commit -v
alias init="git init"
alias pull="git pull origin $@"
alias push="git push origin $@"
alias newbranch="git checkout -b "$@""
alias branch="git checkout "$@""
alias branches="git branch -r"
alias add="git add $@"
alias addall="git add ."
alias commit="git commit -m "$@""
alias commitall="git commit -am "$@""
alias remote="git remote -v"
alias addo="echo 'git remote add origin' & git remote add origin $@"
alias seto="echo 'git remote set-url origin' & git remote set-url origin $@"
alias gitemail="echo 'git config --global user.email' && git config --global user.email yulongtan67@gmail.com"
alias gitname="echo 'git config --global user.name' && git config --global user.name 'Yulong Tan'"

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
alias savevimrc="cp ~/.vimrc ~/profiles"
alias updatevimrc="cp ~/profiles/.vimrc ~"
alias savesnips="cp -r ~/.vim/bundle/vim-snippets/snippets ~/profiles/.vim"
alias updatesnips="cp -r ~/profiles/.vim/snippets ~/.vim/bundle/vim-snippets/"
alias savecolors="cp -r ~/.vim/colors/ ~/profiles/.vim"
alias updatecolors="cp -r ~/profiles/.vim/colors ~/.vim"
alias home="start ~"
alias music="start ~/Music"
alias uw="cd ~/uw"
alias dev="cd ~/dev"
alias webs="cd ~/dev/webs"
alias cse154="cd ~/uw/sophomore/winter/cse154"
alias cse143="cd ~/uw/sophomore/winter/cse143"
alias card="cd /d"
alias marveld="cd /d/marvel"
alias marvel="cd ~/marvel"
alias imagesd="cd /d/images"
alias images="cd ~/images"
alias mongo="cd /c/MongoDB/Server/3.2/bin"
alias remove="rm -rf $@"
alias ls="ls -Gpav"
alias gitaware="git clone git://github.com/jimeh/git-aware-prompt.git ~/.bash/git-aware-prompt"
alias profiles="cd ~/profiles"
alias colors="cd ~/.vim/colors"
alias colorlist="ls ~/.vim/colors"
alias editorconfig="cp ~/profiles/.editorconfig ."
alias newpcconfig="gitaware && updatevimrc && getvimswift && gitemail && gitname && fixvimplugins && updatecolors && plugs"
alias htmlstart="cp ~/profiles/index.html ."
alias desk="cd ~/Desktop"
alias restart="sudo shutdown -r now"
alias getname="scutil --get $@"
alias sub="subl $@"
alias remindLoop="echo 'for i in {1..10}; do touch test${i}.txt; done'"
alias clean="remove ~/Desktop/*.png"

# Vim
alias fixvimplugins="git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/plugin/Vundle.vim"
alias getvimswift="git clone git://github.com/toyamarinyon/vim-swift.git ~/.vim/bundle/vim-swift"
alias plugs="vim +PluginInstall qall"

# Grades
alias grade="cat ~/uw/uwgrades.csv | grep -i "$@""

# bg
alias updatebamboo="scp -r bgadmin@bamboo-garden.co:/home/bgadmin/bamboogarden.net ~"
alias savebamboo="scp -r ~/bamboogarden.net bgadmin@bamboo-garden.co:/home/bgadmin"
alias sbamboo="ssh bgadmin@bamboo-garden.co"




if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH=$PATH:/Users/yulong/Library/Android/sdk/platform-tools/
eval $(/usr/libexec/path_helper -s)

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# added by Anaconda3 5.0.1 installer
export PATH="/Users/yulong/anaconda3/bin:$PATH"
