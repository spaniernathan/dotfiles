# Load aliases.
if [ -f "$HOME/.aliases" ]; then
    source "$HOME/.aliases"
fi

# Colors
export CLICOLOR=1

# ----- PATHS -----

# BIN PATHS
export PATH=$HOME/bin:$PATH
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:$HOME/.yarn/bin
export PATH=$PATH:$HOME/Scripts

# GOPATH
export GOPATH=$HOME/go

# ZSH RELATED PATHS
export ZSH="/Users/spaniernathan/.oh-my-zsh"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Don't log commands beginning with a space.
setopt HIST_IGNORE_SPACE

# Ignore duplicates in history.
setopt HIST_SAVE_NO_DUPS

# Append to history on shell exit rather than overwrite.
setopt APPENDHISTORY

# Store history immediately rather than at end of session.
setopt INC_APPEND_HISTORY

# Allow comments like this in shell.
setopt INTERACTIVECOMMENTS

# Don't beep when auto-completing.
unsetopt LIST_BEEP

# ----- ZSH CONFIG -----

ZSH_THEME="gianu"
CASE_SENSITIVE="false" # Case sensitive auto-completion
DISABLE_AUTO_UPDATE="false" # Bi-weekly auto-update checks
DISABLE_UPDATE_PROMPT="true" # Automatically update without prompting
UPDATE_ZSH_DAYS=13 # How often to auto-update (in days)
DISABLE_MAGIC_FUNCTIONS="false" # Set to true if pasting URLs and other text is messed up
DISABLE_LS_COLORS="false" # Disable colors in ls
DISABLE_AUTO_TITLE="false" # Disable auto-setting terminal title
ENABLE_CORRECTION="false" # Command auto-correction
COMPLETION_WAITING_DOTS="true" # Display red dots whilst waiting for completion
ZSH_DISABLE_COMPFIX="true"

# History
HIST_STAMPS="dd/mm/yyyy" # History timestamp formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1024
SAVEHIST=1024
HISTTIMEFORMAT="%F %T "

plugins=(
  git
  docker-compose
  docker
  gitignore
  golang
  colorize
  colored-man-pages
  rust
)

# Init oh-my-zsh
source $ZSH/oh-my-zsh.sh

# ----- User configuration -----

# export MANPATH="/usr/local/man:$MANPATH"

# export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi


# ----- STARSHIP -----

export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init zsh)"
