# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sunrise"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll="ls -l"
alias gp="git pull"
alias gaa="git add ."
alias gc="git commit"
alias gpu="git push"
alias gs='git status'
alias gr='git reset'
alias gch="git checkout"
alias ctags='/usr/bin/ctags'
alias ctagsmac='/usr/local/Cellar/ctags/5.8/bin/ctags'
alias mvim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/mvim "$@"'
alias sshghost='ssh -i ghost.pem ec2-user@54.199.138.50'
alias sshmy='ssh -A game@gwdev6234.svr.mbga.local'
alias sshquiz='ssh -A game@gwdev6147'
alias scls='screen -ls'
alias scr='screen -r'
alias scd='screen -d'
alias starttpapi='python ./manage.py runserver api.trippiece.local:8080 --settings="trippiece_api.settings_local"'
alias starttpweb='python ./manage.py runserver api.trippiece.local:8000 --settings="trippiece_api.web.settings_local"'
ve() { source ~/.virtualenv/$1/bin/activate; }

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:$PATH
export MOBA_DIR=~/mizuhiro-kio/work/mobasif 
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# load ext file
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

zstyle ':completion:*' rehash true

source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/.virtualenvs
