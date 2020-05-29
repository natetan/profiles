# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/nate/.oh-my-zsh

export TERM=xterm-256color

# VS

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Copied from Bash
#
#
#
# Logins
alias suw="ssh swifties@vergil.u.washington.edu"

#zsh
alias vzsh="vim ~/.zshrc"
alias szsh="source ~/.zshrc"
alias savezsh="cp ~/.zshrc ~/profiles"
alias updatezsh="cp ~/profiles/.zshrc ~"

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
alias gitemail="echo 'git config --global user.email' && git config --global user.email $@"
alias gitname="echo 'git config --global user.name' && git config --global user.name '$@'"

# Quality of Life
alias sbash="source ~/.bash_profile"
alias vbash="vim ~/.bash_profile"
alias vhistory="vim ~/.bash_history"
alias vvim="vim ~/.vimrc"
alias up="cd .."
alias prev="cd -"
alias copy="pbcopy < $@"
alias paste="pbpaste > $@"
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
alias sub="sublime $@"
alias remindLoop="echo 'for i in {1..10}; do touch test${i}.txt; done'"
alias clean="remove ~/Desktop/*.png"
alias ads="azuredatastudio $@"

# Vim
alias fixvimplugins="git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/plugin/Vundle.vim"
alias getvimswift="git clone git://github.com/toyamarinyon/vim-swift.git ~/.vim/bundle/vim-swift"
alias plugs="vim +PluginInstall qall"

# Grades
alias grade="cat ~/uw/uwgrades.csv | grep -i "$@""

# bg
alias pullbamboo="scp -r bgadmin@bamboo-garden.co:/home/bgadmin/bamboogarden.net ~"
alias pushbamboo="scp -r ~/bamboogarden.net bgadmin@bamboo-garden.co:/home/bgadmin"
alias sbamboo="ssh bgadmin@bamboo-garden.co"




if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH=$PATH:/Users/nate/Library/Android/sdk/platform-tools/
eval $(/usr/libexec/path_helper -s)

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# added by Anaconda3 5.0.1 installer
export PATH="/Users/nate/anaconda3/bin:$PATH"
